#ifndef __ARM32_MMU_H__
#define __ARM32_MMU_H__

#ifdef __cplusplus
extern "C" {
#endif

typedef enum
{
    SECTION_NCNB   = 0x0, // not cached, not buffered
    SECTION_NCB    = 0x1, // not cached, buffered
    SECTION_CNB    = 0x2, // cached, writethrough
    SECTION_CB     = 0x3, // cached, writeback
}mmu_entry_type_e;

static inline void mmu_map_l1_entry(uint32_t * tbl, uint32_t virt, uint32_t phys, uint32_t size, mmu_entry_type_e type)
{
    uint32_t i;

    virt >>= 20;
    phys >>= 20;
    size >>= 20;
    type &= 0x3;

    for(i = size; i > 0; i--, virt++, phys++)
    {
        tbl[virt] = (phys << 20) | (0x3 << 10) | (0x0 << 5) | (type << 2) | (0x2 << 0);
    }
}

#ifdef __cplusplus
}
#endif

#endif /* __ARM32_MMU_H__ */
