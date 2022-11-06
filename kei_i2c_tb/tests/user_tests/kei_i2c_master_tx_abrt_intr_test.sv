
`ifndef KEI_I2C_MASTER_TX_ABRT_INTR_TEST_SV
`define KEI_I2C_MASTER_TX_ABRT_INTR_TEST_SV

class kei_i2c_master_tx_abrt_intr_test extends kei_i2c_base_test;

  `uvm_component_utils(kei_i2c_master_tx_abrt_intr_test)

  function new(string name = "kei_i2c_master_tx_abrt_intr_test", uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    // TODO
    // modify components' configurations
  endfunction

  task run_phase(uvm_phase phase);
    kei_i2c_master_tx_abrt_intr_virt_seq seq = kei_i2c_master_tx_abrt_intr_virt_seq::type_id::create("seq");
    phase.raise_objection(this);
    `uvm_info("SEQ", "sequence starting", UVM_LOW)
    seq.start(env.sqr);
    `uvm_info("SEQ", "sequence finished", UVM_LOW)
    phase.drop_objection(this);
  endtask

endclass

`endif // KEI_I2C_MASTER_TX_ABRT_INTR_TEST_SV