struct deferment
  {
    struct deferment *next;
    struct new_cpio_header header;
  };

struct deferment *create_deferment PARAMS ((struct new_cpio_header *file_hdr));
void free_deferment PARAMS ((struct deferment *d));
