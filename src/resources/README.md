## OWL files used for loading to Neo to generate figures

### Uberon + cl mashup

base files are cl and uberon release products

subset files are in https://github.com/hubmapconsortium/ccf-validation-tools/tree/master/owl

```sh
robot merge -i cl-base.owl -i cl-uberon.owl -i CL_ASCTB_subset.owl - UB_ASCTB_subset.owl relax -o uberon_cl_bm_relaxed_add_sub.owl
```

### ASCT+B OWL 

[CCF_AS_CT.owl](https://raw.githubusercontent.com/hubmapconsortium/ccf-validation-tools/master/owl/CCF_AS_CT.owl)
