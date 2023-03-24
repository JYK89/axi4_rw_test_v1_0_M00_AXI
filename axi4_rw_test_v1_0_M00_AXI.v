
`timescale 1 ns / 1 ps

	module axi4_rw_test_v1_0_M00_AXI #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line
		// Base address of targeted slave
		parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		// Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
		parameter integer C_M_AXI_BURST_LEN	= 256,
		// Thread ID Width
		parameter integer C_M_AXI_ID_WIDTH	= 1,
		// Width of Address Bus
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		// Width of Data Bus
		parameter integer C_M_AXI_DATA_WIDTH	= 32,
		// Width of User Write Address Bus
		parameter integer C_M_AXI_AWUSER_WIDTH	= 0,
		// Width of User Read Address Bus
		parameter integer C_M_AXI_ARUSER_WIDTH	= 0,
		// Width of User Write Data Bus
		parameter integer C_M_AXI_WUSER_WIDTH	= 0,
		// Width of User Read Data Bus
		parameter integer C_M_AXI_RUSER_WIDTH	= 0,
		// Width of User Response Bus
		parameter integer C_M_AXI_BUSER_WIDTH	= 0
	)
	(
		// Users to add ports here
		
		//test
        output wire TEST1_1,output wire TEST1_0,output wire TEST2_1,output wire TEST2_0,output wire TEST3_1,output wire TEST3_0,output wire TEST4_1,output wire TEST4_0,output wire TEST5_1,output wire TEST5_0,
		output wire TEST6_1,output wire TEST6_0,output wire TEST7_1,output wire TEST7_0,output wire TEST8_1,output wire TEST8_0,output wire TEST9_1,output wire TEST9_0,output wire TEST10_1,output wire TEST10_0,//10
		
		output wire TEST11_1,output wire TEST11_0,output wire TEST12_1,output wire TEST12_0,output wire TEST13_1,output wire TEST13_0,output wire TEST14_1,output wire TEST14_0,output wire TEST15_1,output wire TEST15_0,
		output wire TEST16_1,output wire TEST16_0,output wire TEST17_1,output wire TEST17_0,output wire TEST18_1,output wire TEST18_0,output wire TEST19_1,output wire TEST19_0,output wire TEST20_1,output wire TEST20_0,//20
		
		output wire TEST21_1,output wire TEST21_0,output wire TEST22_1,output wire TEST22_0,output wire TEST23_1,output wire TEST23_0,output wire TEST24_1,output wire TEST24_0,output wire TEST25_1,output wire TEST25_0,
		output wire TEST26_1,output wire TEST26_0,output wire TEST27_1,output wire TEST27_0,output wire TEST28_1,output wire TEST28_0,output wire TEST29_1,output wire TEST29_0,output wire TEST30_1,output wire TEST30_0,//30
		
		output wire TEST31_1,output wire TEST31_0,output wire TEST32_1,output wire TEST32_0,output wire TEST33_1,output wire TEST33_0,output wire TEST34_1,output wire TEST34_0,output wire TEST35_1,output wire TEST35_0,
		output wire TEST36_1,output wire TEST36_0,output wire TEST37_1,output wire TEST37_0,output wire TEST38_1,output wire TEST38_0,output wire TEST39_1,output wire TEST39_0,output wire TEST40_1,output wire TEST40_0,//40
		
		output wire TEST41_1,output wire TEST41_0,output wire TEST42_1,output wire TEST42_0,output wire TEST43_1,output wire TEST43_0,output wire TEST44_1,output wire TEST44_0,output wire TEST45_1,output wire TEST45_0,
		output wire TEST46_1,output wire TEST46_0,output wire TEST47_1,output wire TEST47_0,output wire TEST48_1,output wire TEST48_0,output wire TEST49_1,output wire TEST49_0,output wire TEST50_1,output wire TEST50_0,//50
		
		output wire TEST51_1,output wire TEST51_0,output wire TEST52_1,output wire TEST52_0,output wire TEST53_1,output wire TEST53_0,output wire TEST54_1,output wire TEST54_0,output wire TEST55_1,output wire TEST55_0,
		output wire TEST56_1,output wire TEST56_0,output wire TEST57_1,output wire TEST57_0,output wire TEST58_1,output wire TEST58_0,output wire TEST59_1,output wire TEST59_0,output wire TEST60_1,output wire TEST60_0,//60
		
		output wire TEST61_1,output wire TEST61_0,output wire TEST62_1,output wire TEST62_0,output wire TEST63_1,output wire TEST63_0,output wire TEST64_1,output wire TEST64_0,output wire TEST65_1,output wire TEST65_0,
		output wire TEST66_1,output wire TEST66_0,output wire TEST67_1,output wire TEST67_0,output wire TEST68_1,output wire TEST68_0,output wire TEST69_1,output wire TEST69_0,output wire TEST70_1,output wire TEST70_0,//70
		
		output wire TEST71_1,output wire TEST71_0,output wire TEST72_1,output wire TEST72_0,output wire TEST73_1,output wire TEST73_0,output wire TEST74_1,output wire TEST74_0,output wire TEST75_1,output wire TEST75_0,
		output wire TEST76_1,output wire TEST76_0,output wire TEST77_1,output wire TEST77_0,output wire TEST78_1,output wire TEST78_0,output wire TEST79_1,output wire TEST79_0,output wire TEST80_1,output wire TEST80_0,//80
		
		output wire TEST81_1,output wire TEST81_0,output wire TEST82_1,output wire TEST82_0,output wire TEST83_1,output wire TEST83_0,output wire TEST84_1,output wire TEST84_0,output wire TEST85_1,output wire TEST85_0,
		output wire TEST86_1,output wire TEST86_0,output wire TEST87_1,output wire TEST87_0,output wire TEST88_1,output wire TEST88_0,output wire TEST89_1,output wire TEST89_0,output wire TEST90_1,output wire TEST90_0,//90
		
		output wire TEST91_1,output wire TEST91_0,output wire TEST92_1,output wire TEST92_0,output wire TEST93_1,output wire TEST93_0,output wire TEST94_1,output wire TEST94_0,output wire TEST95_1,output wire TEST95_0,
		output wire TEST96_1,output wire TEST96_0,


		// User ports ends
		// Do not modify the ports beyond this line

//		// Initiate AXI transactions
//		input wire  INIT_AXI_TXN,
//		// Asserts when transaction is complete
//		output wire  TXN_DONE,
		// Asserts when ERROR is detected
		output wire  ERROR,
		// Global Clock Signal.
		input wire  M_AXI_ACLK,
		// Global Reset Singal. This Signal is Active Low
		input wire  M_AXI_ARESETN,
		// Master Interface Write Address ID
		output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_AWID,
		// Master Interface Write Address
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		output wire [7 : 0] M_AXI_AWLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		output wire [2 : 0] M_AXI_AWSIZE,
		// Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
		output wire [1 : 0] M_AXI_AWBURST,
		// Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
		output wire  M_AXI_AWLOCK,
		// Memory type. This signal indicates how transactions
    // are required to progress through a system.
		output wire [3 : 0] M_AXI_AWCACHE,
		// Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_AWPROT,
		// Quality of Service, QoS identifier sent for each write transaction.
		output wire [3 : 0] M_AXI_AWQOS,
		// Optional User-defined signal in the write address channel.
		output wire [C_M_AXI_AWUSER_WIDTH-1 : 0] M_AXI_AWUSER,
		// Write address valid. This signal indicates that
    // the channel is signaling valid write address and control information.
		output wire  M_AXI_AWVALID,
		// Write address ready. This signal indicates that
    // the slave is ready to accept an address and associated control signals
		input wire  M_AXI_AWREADY,
		// Master Interface Write Data.
		output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
		// Write strobes. This signal indicates which byte
    // lanes hold valid data. There is one write strobe
    // bit for each eight bits of the write data bus.
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
		// Write last. This signal indicates the last transfer in a write burst.
		output wire  M_AXI_WLAST,
		// Optional User-defined signal in the write data channel.
		output wire [C_M_AXI_WUSER_WIDTH-1 : 0] M_AXI_WUSER,
		// Write valid. This signal indicates that valid write
    // data and strobes are available
		output wire  M_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    // can accept the write data.
		input wire  M_AXI_WREADY,
		// Master Interface Write Response.
		input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_BID,
		// Write response. This signal indicates the status of the write transaction.
		input wire [1 : 0] M_AXI_BRESP,
		// Optional User-defined signal in the write response channel
		input wire [C_M_AXI_BUSER_WIDTH-1 : 0] M_AXI_BUSER,
		// Write response valid. This signal indicates that the
    // channel is signaling a valid write response.
		input wire  M_AXI_BVALID,
		// Response ready. This signal indicates that the master
    // can accept a write response.
		output wire  M_AXI_BREADY,
		// Master Interface Read Address.
		output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_ARID,
		// Read address. This signal indicates the initial
    // address of a read burst transaction.
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
		output wire [7 : 0] M_AXI_ARLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
		output wire [2 : 0] M_AXI_ARSIZE,
		// Burst type. The burst type and the size information, 
    // determine how the address for each transfer within the burst is calculated.
		output wire [1 : 0] M_AXI_ARBURST,
		// Lock type. Provides additional information about the
    // atomic characteristics of the transfer.
		output wire  M_AXI_ARLOCK,
		// Memory type. This signal indicates how transactions
    // are required to progress through a system.
		output wire [3 : 0] M_AXI_ARCACHE,
		// Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_ARPROT,
		// Quality of Service, QoS identifier sent for each read transaction
		output wire [3 : 0] M_AXI_ARQOS,
		// Optional User-defined signal in the read address channel.
		output wire [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER,
		// Write address valid. This signal indicates that
    // the channel is signaling valid read address and control information
		output wire  M_AXI_ARVALID,
		// Read address ready. This signal indicates that
    // the slave is ready to accept an address and associated control signals
		input wire  M_AXI_ARREADY,
		// Read ID tag. This signal is the identification tag
    // for the read data group of signals generated by the slave.
		input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID,
		// Master Read Data
		input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
		// Read response. This signal indicates the status of the read transfer
		input wire [1 : 0] M_AXI_RRESP,
		// Read last. This signal indicates the last transfer in a read burst
		input wire  M_AXI_RLAST,
		// Optional User-defined signal in the read address channel.
		input wire [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER,
		// Read valid. This signal indicates that the channel
    // is signaling the required read data.
		input wire  M_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    // accept the read data and response information.
		output wire  M_AXI_RREADY
	);


	// function called clogb2 that returns an integer which has the
	//value of the ceiling of the log base 2

	  // function called clogb2 that returns an integer which has the 
	  // value of the ceiling of the log base 2.                      
	  function integer clogb2 (input integer bit_depth);              
	  begin                                                           
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
	      bit_depth = bit_depth >> 1;                                 
	    end                                                           
	  endfunction                                                     

	// C_TRANSACTIONS_NUM is the width of the index counter for 
	// number of write or read transaction.
//	 localparam integer C_TRANSACTIONS_NUM = clogb2(C_M_AXI_BURST_LEN_VAL-1);

	// Burst length for transactions, in C_M_AXI_DATA_WIDTHs.
	// Non-2^n lengths will eventually cause bursts across 4K address boundaries.
//	 localparam integer C_MASTER_LENGTH	= 12;
	// total number of burst transfers is master length divided by burst length and burst size
//	 localparam integer C_NO_BURSTS_REQ = C_MASTER_LENGTH-clogb2((C_M_AXI_BURST_LEN_VAL*C_M_AXI_DATA_WIDTH/8)-1);
	// Example State machine to initialize counter, initialize write transactions, 
	// initialize read transactions and comparison of read data with the 
	// written data words.
	parameter [1:0] IDLE = 2'b00, // This state initiates AXI4Lite transaction 
			// after the state machine changes state to INIT_WRITE 
			// when there is 0 to 1 transition on INIT_AXI_TXN
		INIT_WRITE   = 2'b01, // This state initializes write transaction,
			// once writes are done, the state machine 
			// changes state to INIT_READ 
		INIT_READ = 2'b10, // This state initializes read transaction
			// once reads are done, the state machine 
			// changes state to INIT_COMPARE 
		INIT_COMPARE = 2'b11; // This state issues the status of comparison 
			// of the written data with the read data	

	 reg [1:0] mst_exec_state;	
	 reg [1:0] mst_exec_state_init1;
	 reg [1:0] mst_exec_state_init2;
			
     parameter [3:0] 
	    INIT_ALL           = 4'b0000,  // pro start
	    CHECK_DONE         = 4'b0001,  // check read write done 
	    READ_CMD           = 4'b0010,  //the first read cmd infro
		READ_NEW_CMD_INIT  = 4'b0011,  //read new cmd before once Waveform
		READ_NEW_CMD       = 4'b0100, 
		READ_DATA_INIT     = 4'b0101,
		READ_DATA          = 4'b0110,     
        OUT_NULL_WAVEF     = 4'b0111,
        WRITE_END_INIT     = 4'b1000,
        WRITE_END          = 4'b1001;     

	reg [2:0] sys_exec_state;
	
	
	parameter integer read_data_value2_def	= 180,
	 read_data_value2_def_x4	= 720,
	 read_data_value2_def_sub6	= 174;

	// AXI4LITE signals
	//AXI4 internal temp signals
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awvalid;
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata;
	reg  	axi_wlast;
	reg  	axi_wvalid;
	reg  	axi_bready;
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arvalid;
	reg  	axi_rready;
	//write beat count in a burst
	reg [31 : 0] 	write_index;
	//read beat count in a burst
	reg [31 : 0] 	read_index;
	//size of C_M_AXI_BURST_LEN_VAL length burst in bytes
	wire [31 : 0] 	burst_size_bytes;
	//The burst counters are used to track the number of burst transfers of C_M_AXI_BURST_LEN_VAL burst length needed to transfer 2^C_MASTER_LENGTH bytes of data.
	reg [31 : 0] 	write_burst_counter;
	reg [31 : 0] 	read_burst_counter;
	reg  	start_single_burst_write;
	reg  	start_single_burst_read;
	reg  	writes_done;
	reg  	reads_done;
	reg  	error_reg;
	reg  	compare_done;
	reg  	read_mismatch;
	reg  	burst_write_active;
	reg  	burst_read_active;
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	expected_rdata;
	//Interface response error flags
	wire  	write_resp_error;
	wire  	read_resp_error;
	wire  	wnext;
	wire  	rnext;
	
	wire  	init_txn_pulse;
	
	
	reg  	init_txn_ff;
	reg  	init_txn_ff2;
	reg  	init_txn_edge;
	
    reg  	init_txn_pulse1;
    reg  	init_txn_pulse2;
	
	// Users to add variable here
	
	//reg [7 : 0] C_M_AXI_BURST_LEN_VAL_VARIABLE;
    //reg [7 : 0] C_M_AXI_BURST_LEN_VAL_VARIABLE1;
	reg [31 : 0] C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE1;
	reg [31 : 0] C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE2;

    reg  	ddr_data_done_led1;
    reg  	ddr_data_error_led2;
	reg     Init_axi_reg;
    
    reg [31 : 0] read_data_count;
    
	wire [31 : 0] read_data_value;//once data  64 32bit
	reg [31 : 0] read_data_value1;//once data  64 32bit
	reg [31 : 0] read_data_value2;//once data  64 32bit
	
	
	reg [31 : 0] write_data_count;
	reg [31 : 0] write_data_value;
	
	//reg [31 : 0] read_data_dev_addr;  //读偏移地坿
	//reg [31 : 0] write_data_dev_addr; //写偏移地坿//////////xcxcxcxc
	
	reg [31 : 0] read_con_buff0[129 : 0];
	reg [31 : 0] read_con_buff1[129 : 0];
	reg [31 : 0] read_con_buff2[129 : 0];
	reg [7 : 0] read_con_buff_type;	
	reg [7 : 0] read_con_buff_num;
	
    reg [31 : 0] waveform_fre_count;
	reg [31 : 0] waveform_fre_value;
	
    reg [31 : 0] waveform_cnt_count;
    reg [31 : 0] waveform_cnt_value;//totol data 32bit
    
    
    //reg [63 : 0] PULSE_WAVEFORM_PIN_reg;
    
    
    ///////////////////////////////////////////////////////////////新变量1
    wire [31:0] C_M_AXI_BURST_LEN_VAL;
    reg[31:0] C_M_AXI_BURST_LEN_VAL1;
    reg[31:0] C_M_AXI_BURST_LEN_VAL2;
    
    
    reg [7 : 0] main_2times_flag;
    
    reg [7 : 0] main_check_step;
    reg [31 : 0] main_check_temp;
    reg [7 : 0] Generate_waveform_flag;
    reg [7 : 0] Generate_waveform_end1;
    reg [7 : 0] Generate_waveform_end2;
    reg [31 : 0] Generate_waveform_last_value;
    reg [31 : 0] Generate_waveform_PERT;           
    reg [31 : 0] Generate_waveform_FRE;
    reg [31 : 0] Generate_waveform_LEN;
    reg [31 : 0] Generate_waveform_CNT;
    
    reg [31 : 0] Generate_waveform_LEN_count;
    
    reg [7 : 0] data_read_step;
    //reg [31 : 0] data_read_temp;
    reg [7 : 0] Generate_arr_waveform;
    reg [31 : 0] data_read_addr;
    
    reg [7 : 0] PIN_GEN_FLAG;//en pin change
    
    reg [7 : 0] read_arr_CH;
    reg [7 : 0] Arr_waveform_end;
    reg [7 : 0] Arr1_waveform_end;
    reg [7 : 0] Arr2_waveform_end;
    
    reg [7 : 0] Generate_waveform_step;
    
    reg [31 : 0] Generate_waveform_FRE_VAL;
    
    reg [31 : 0] main_axi_delay;
    reg [7 : 0] data_axi_delay;
    
    
    reg [7 : 0] ch_num;
    
    reg [31 : 0] read_waveform_arr_temp1;
    reg [31 : 0] read_waveform_arr_temp2;
    reg [31 : 0] read_waveform_arr_temp3;
    reg [31 : 0] read_waveform_arr_temp4;
    reg [31 : 0] read_waveform_arr_temp5;
    reg [31 : 0] read_waveform_arr_temp6;
    
    
    reg tch1_1;reg tch1_0;reg tch2_1;reg tch2_0;reg tch3_1;reg tch3_0;reg tch4_1;reg tch4_0;reg tch5_1;reg tch5_0;
    reg tch6_1;reg tch6_0;reg tch7_1;reg tch7_0;reg tch8_1;reg tch8_0;reg tch9_1;reg tch9_0;reg tch10_1;reg tch10_0;//10
    reg tch11_1;reg tch11_0;reg tch12_1;reg tch12_0;reg tch13_1;reg tch13_0;reg tch14_1;reg tch14_0;reg tch15_1;reg tch15_0;
    reg tch16_1;reg tch16_0;reg tch17_1;reg tch17_0;reg tch18_1;reg tch18_0;reg tch19_1;reg tch19_0;reg tch20_1;reg tch20_0;//20
    reg tch21_1;reg tch21_0;reg tch22_1;reg tch22_0;reg tch23_1;reg tch23_0;reg tch24_1;reg tch24_0;reg tch25_1;reg tch25_0;
    reg tch26_1;reg tch26_0;reg tch27_1;reg tch27_0;reg tch28_1;reg tch28_0;reg tch29_1;reg tch29_0;reg tch30_1;reg tch30_0;//30
    reg tch31_1;reg tch31_0;reg tch32_1;reg tch32_0;reg tch33_1;reg tch33_0;reg tch34_1;reg tch34_0;reg tch35_1;reg tch35_0;
    reg tch36_1;reg tch36_0;reg tch37_1;reg tch37_0;reg tch38_1;reg tch38_0;reg tch39_1;reg tch39_0;reg tch40_1;reg tch40_0;//40
    reg tch41_1;reg tch41_0;reg tch42_1;reg tch42_0;reg tch43_1;reg tch43_0;reg tch44_1;reg tch44_0;reg tch45_1;reg tch45_0;
    reg tch46_1;reg tch46_0;reg tch47_1;reg tch47_0;reg tch48_1;reg tch48_0;reg tch49_1;reg tch49_0;reg tch50_1;reg tch50_0;//50
    reg tch51_1;reg tch51_0;reg tch52_1;reg tch52_0;reg tch53_1;reg tch53_0;reg tch54_1;reg tch54_0;reg tch55_1;reg tch55_0;
    reg tch56_1;reg tch56_0;reg tch57_1;reg tch57_0;reg tch58_1;reg tch58_0;reg tch59_1;reg tch59_0;reg tch60_1;reg tch60_0;//60
    reg tch61_1;reg tch61_0;reg tch62_1;reg tch62_0;reg tch63_1;reg tch63_0;reg tch64_1;reg tch64_0;reg tch65_1;reg tch65_0;
    reg tch66_1;reg tch66_0;reg tch67_1;reg tch67_0;reg tch68_1;reg tch68_0;reg tch69_1;reg tch69_0;reg tch70_1;reg tch70_0;//70
    reg tch71_1;reg tch71_0;reg tch72_1;reg tch72_0;reg tch73_1;reg tch73_0;reg tch74_1;reg tch74_0;reg tch75_1;reg tch75_0;
    reg tch76_1;reg tch76_0;reg tch77_1;reg tch77_0;reg tch78_1;reg tch78_0;reg tch79_1;reg tch79_0;reg tch80_1;reg tch80_0;//80
    reg tch81_1;reg tch81_0;reg tch82_1;reg tch82_0;reg tch83_1;reg tch83_0;reg tch84_1;reg tch84_0;reg tch85_1;reg tch85_0;
    reg tch86_1;reg tch86_0;reg tch87_1;reg tch87_0;reg tch88_1;reg tch88_0;reg tch89_1;reg tch89_0;reg tch90_1;reg tch90_0;//90
    reg tch91_1;reg tch91_0;reg tch92_1;reg tch92_0;reg tch93_1;reg tch93_0;reg tch94_1;reg tch94_0;reg tch95_1;reg tch95_0;
    reg tch96_1;reg tch96_0;
    
    /////////////////////////////////////////////////////////////新变量1
    
	// I/O Connections assignments

	//I/O Connections. Write Address (AW)
	assign M_AXI_AWID	= 'b0;
	//The AXI address is a concatenation of the target base address + active offset range
	assign M_AXI_AWADDR	= C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE1 + C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE2 + axi_awaddr;
	//Burst LENgth is number of transaction beats, minus 1
	assign M_AXI_AWLEN	= C_M_AXI_BURST_LEN_VAL - 1;
	//Size should be C_M_AXI_DATA_WIDTH, in 2^SIZE bytes, otherwise narrow bursts are used
	assign M_AXI_AWSIZE	= clogb2((C_M_AXI_DATA_WIDTH/8)-1);
	//INCR burst type is usually used, except for keyhole bursts
	assign M_AXI_AWBURST	= 2'b01;
	assign M_AXI_AWLOCK	= 1'b0;
	//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
	assign M_AXI_AWCACHE	= 4'b0010;
	assign M_AXI_AWPROT	= 3'h0;
	assign M_AXI_AWQOS	= 4'h0;
	assign M_AXI_AWUSER	= 'b1;
	assign M_AXI_AWVALID	= axi_awvalid;
	//Write Data(W)
	assign M_AXI_WDATA	= axi_wdata;
	//All bursts are complete and aligned in this example
	assign M_AXI_WSTRB	= {(C_M_AXI_DATA_WIDTH/8){1'b1}};
	assign M_AXI_WLAST	= axi_wlast;
	assign M_AXI_WUSER	= 'b0;
	assign M_AXI_WVALID	= axi_wvalid;
	//Write Response (B)
	assign M_AXI_BREADY	= axi_bready;
	//Read Address (AR)
	assign M_AXI_ARID	= 'b0;
	//assign M_AXI_ARADDR	= C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE + C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE1 + axi_araddr;
	assign M_AXI_ARADDR	= C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE1 + C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE2  + axi_araddr;
	//Burst LENgth is number of transaction beats, minus 1
	assign M_AXI_ARLEN	= C_M_AXI_BURST_LEN_VAL - 1;
	//Size should be C_M_AXI_DATA_WIDTH, in 2^n bytes, otherwise narrow bursts are used
	assign M_AXI_ARSIZE	= clogb2((C_M_AXI_DATA_WIDTH/8)-1);
	//INCR burst type is usually used, except for keyhole bursts
	assign M_AXI_ARBURST	= 2'b01;
	assign M_AXI_ARLOCK	= 1'b0;
	//Update value to 4'b0011 if coherent accesses to be used via the Zynq ACP port. Not Allocated, Modifiable, not Bufferable. Not Bufferable since this example is meant to test memory, not intermediate cache. 
	assign M_AXI_ARCACHE	= 4'b0010;
	assign M_AXI_ARPROT	= 3'h0;
	assign M_AXI_ARQOS	= 4'h0;
	assign M_AXI_ARUSER	= 'b1;
	assign M_AXI_ARVALID	= axi_arvalid;
	//Read and Read Response (R)
	assign M_AXI_RREADY	= axi_rready;
	//Example design I/O
//	assign TXN_DONE	= ddr_data_done_led1;
	assign ERROR	= ddr_data_error_led2;
	//Burst size in bytes
	assign burst_size_bytes	= C_M_AXI_BURST_LEN_VAL * C_M_AXI_DATA_WIDTH/8;
	
	assign init_txn_pulse = init_txn_pulse1 && init_txn_pulse2;
	assign C_M_AXI_BURST_LEN_VAL = C_M_AXI_BURST_LEN_VAL1 + C_M_AXI_BURST_LEN_VAL2;
	assign read_data_value = read_data_value1 + read_data_value2;
	
	assign TEST1_1=tch1_1;assign TEST1_0=tch1_0;assign TEST2_1=tch2_1;assign TEST2_0=tch2_0;assign TEST3_1=tch3_1;assign TEST3_0=tch3_0;assign TEST4_1=tch4_1;assign TEST4_0=tch4_0;assign TEST5_1=tch5_1;assign TEST5_0=tch5_0;
    assign TEST6_1=tch6_1;assign TEST6_0=tch6_0;assign TEST7_1=tch7_1;assign TEST7_0=tch7_0;assign TEST8_1=tch8_1;assign TEST8_0=tch8_0;assign TEST9_1=tch9_1;assign TEST9_0=tch9_0;assign TEST10_1=tch10_1;assign TEST10_0=tch10_0;//10
    assign TEST11_1=tch11_1;assign TEST11_0=tch11_0;assign TEST12_1=tch12_1;assign TEST12_0=tch12_0;assign TEST13_1=tch13_1;assign TEST13_0=tch13_0;assign TEST14_1=tch14_1;assign TEST14_0=tch14_0;assign TEST15_1=tch15_1;assign TEST15_0=tch15_0;
    assign TEST16_1=tch16_1;assign TEST16_0=tch16_0;assign TEST17_1=tch17_1;assign TEST17_0=tch17_0;assign TEST18_1=tch18_1;assign TEST18_0=tch18_0;assign TEST19_1=tch19_1;assign TEST19_0=tch19_0;assign TEST20_1=tch20_1;assign TEST20_0=tch20_0;//20
    assign TEST21_1=tch21_1;assign TEST21_0=tch21_0;assign TEST22_1=tch22_1;assign TEST22_0=tch22_0;assign TEST23_1=tch23_1;assign TEST23_0=tch23_0;assign TEST24_1=tch24_1;assign TEST24_0=tch24_0;assign TEST25_1=tch25_1;assign TEST25_0=tch25_0;
    assign TEST26_1=tch26_1;assign TEST26_0=tch26_0;assign TEST27_1=tch27_1;assign TEST27_0=tch27_0;assign TEST28_1=tch28_1;assign TEST28_0=tch28_0;assign TEST29_1=tch29_1;assign TEST29_0=tch29_0;assign TEST30_1=tch30_1;assign TEST30_0=tch30_0;//30
    assign TEST31_1=tch31_1;assign TEST31_0=tch31_0;assign TEST32_1=tch32_1;assign TEST32_0=tch32_0;assign TEST33_1=tch33_1;assign TEST33_0=tch33_0;assign TEST34_1=tch34_1;assign TEST34_0=tch34_0;assign TEST35_1=tch35_1;assign TEST35_0=tch35_0;
    assign TEST36_1=tch36_1;assign TEST36_0=tch36_0;assign TEST37_1=tch37_1;assign TEST37_0=tch37_0;assign TEST38_1=tch38_1;assign TEST38_0=tch38_0;assign TEST39_1=tch39_1;assign TEST39_0=tch39_0;assign TEST40_1=tch40_1;assign TEST40_0=tch40_0;//40
    assign TEST41_1=tch41_1;assign TEST41_0=tch41_0;assign TEST42_1=tch42_1;assign TEST42_0=tch42_0;assign TEST43_1=tch43_1;assign TEST43_0=tch43_0;assign TEST44_1=tch44_1;assign TEST44_0=tch44_0;assign TEST45_1=tch45_1;assign TEST45_0=tch45_0;
    assign TEST46_1=tch46_1;assign TEST46_0=tch46_0;assign TEST47_1=tch47_1;assign TEST47_0=tch47_0;assign TEST48_1=tch48_1;assign TEST48_0=tch48_0;assign TEST49_1=tch49_1;assign TEST49_0=tch49_0;assign TEST50_1=tch50_1;assign TEST50_0=tch50_0;//50
    assign TEST51_1=tch51_1;assign TEST51_0=tch51_0;assign TEST52_1=tch52_1;assign TEST52_0=tch52_0;assign TEST53_1=tch53_1;assign TEST53_0=tch53_0;assign TEST54_1=tch54_1;assign TEST54_0=tch54_0;assign TEST55_1=tch55_1;assign TEST55_0=tch55_0;
    assign TEST56_1=tch56_1;assign TEST56_0=tch56_0;assign TEST57_1=tch57_1;assign TEST57_0=tch57_0;assign TEST58_1=tch58_1;assign TEST58_0=tch58_0;assign TEST59_1=tch59_1;assign TEST59_0=tch59_0;assign TEST60_1=tch60_1;assign TEST60_0=tch60_0;//60
    assign TEST61_1=tch61_1;assign TEST61_0=tch61_0;assign TEST62_1=tch62_1;assign TEST62_0=tch62_0;assign TEST63_1=tch63_1;assign TEST63_0=tch63_0;assign TEST64_1=tch64_1;assign TEST64_0=tch64_0;assign TEST65_1=tch65_1;assign TEST65_0=tch65_0;
    assign TEST66_1=tch66_1;assign TEST66_0=tch66_0;assign TEST67_1=tch67_1;assign TEST67_0=tch67_0;assign TEST68_1=tch68_1;assign TEST68_0=tch68_0;assign TEST69_1=tch69_1;assign TEST69_0=tch69_0;assign TEST70_1=tch70_1;assign TEST70_0=tch70_0;//70
    assign TEST71_1=tch71_1;assign TEST71_0=tch71_0;assign TEST72_1=tch72_1;assign TEST72_0=tch72_0;assign TEST73_1=tch73_1;assign TEST73_0=tch73_0;assign TEST74_1=tch74_1;assign TEST74_0=tch74_0;assign TEST75_1=tch75_1;assign TEST75_0=tch75_0;
    assign TEST76_1=tch76_1;assign TEST76_0=tch76_0;assign TEST77_1=tch77_1;assign TEST77_0=tch77_0;assign TEST78_1=tch78_1;assign TEST78_0=tch78_0;assign TEST79_1=tch79_1;assign TEST79_0=tch79_0;assign TEST80_1=tch80_1;assign TEST80_0=tch80_0;//80
    assign TEST81_1=tch81_1;assign TEST81_0=tch81_0;assign TEST82_1=tch82_1;assign TEST82_0=tch82_0;assign TEST83_1=tch83_1;assign TEST83_0=tch83_0;assign TEST84_1=tch84_1;assign TEST84_0=tch84_0;assign TEST85_1=tch85_1;assign TEST85_0=tch85_0;
    assign TEST86_1=tch86_1;assign TEST86_0=tch86_0;assign TEST87_1=tch87_1;assign TEST87_0=tch87_0;assign TEST88_1=tch88_1;assign TEST88_0=tch88_0;assign TEST89_1=tch89_1;assign TEST89_0=tch89_0;assign TEST90_1=tch90_1;assign TEST90_0=tch90_0;//90
    assign TEST91_1=tch91_1;assign TEST91_0=tch91_0;assign TEST92_1=tch92_1;assign TEST92_0=tch92_0;assign TEST93_1=tch93_1;assign TEST93_0=tch93_0;assign TEST94_1=tch94_1;assign TEST94_0=tch94_0;assign TEST95_1=tch95_1;assign TEST95_0=tch95_0;
    assign TEST96_1=tch96_1;assign TEST96_0=tch96_0;
    
  
	  always @ (posedge M_AXI_ACLK)//主检测程序//////////////////////////////////////////////////////////////////////////////////                                                                            
	  begin 
	        if (M_AXI_ARESETN == 1'b0)//如果系统复位，复位所有值	
              begin         
                Generate_waveform_flag <= 8'd0;//禁止产生波形
                Generate_waveform_last_value <= 8'd0;  
                read_data_value1 <= 8'd7;//读6个32bit数	 
                C_M_AXI_BURST_LEN_VAL1 <= 8'd7;//读6个32bit数	 
                C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE1 <= 32'h0fffffe4;//32'h0fffffe8;//读CMD
                mst_exec_state_init1 <= INIT_READ;
                init_txn_pulse1 <= 1'b1;//复位读信息 
                main_check_step <= 8'd0;//复位状态机 
              end
            else 
              begin
                if(main_check_step == 8'd0)
                begin
                 //读数据准备程序
                 read_data_value1 <= 8'd7;//读6个32bit数	 
                 C_M_AXI_BURST_LEN_VAL1 <= 8'd7;//读6个32bit数	 
                 C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE1 <= 32'h0fffffe4;//32'h0fffffe8;//读CMD
                 mst_exec_state_init1 <= INIT_READ;
                 init_txn_pulse1 <= 1'b1;//复位读信息
                 //读数据准备程序
                 main_axi_delay <= 8'd5;
                 main_check_step <= 8'd1;//状态机等于0
                end
                else if(main_check_step == 8'd1)
                begin 
                 if(main_axi_delay > 1'b0)  main_axi_delay <= main_axi_delay - 8'd1;
                 else init_txn_pulse1 <= 1'b0;//5个周期后开始读
                 
                   if(read_data_count >= read_data_value1 - 1)//完成6次读取
                 begin
                    if((read_con_buff0[0] == 32'haa55aa55)&&(read_con_buff0[1] == 32'h00000001)&&(read_con_buff0[2] != Generate_waveform_last_value)&&(read_con_buff0[6] == 32'hbb33bb33))
                     begin
                       Generate_waveform_last_value <= read_con_buff0[2];//存本次波形序列，
                       main_check_step <= 8'd2;//执行下个状态
                      Generate_waveform_FRE <= read_con_buff0[3];//Generate_waveform_FRE <= read_con_buff0[3] * 2;//读每拍频率,时钟为50MHz，持续多长次，周期(时间) = 50MHz / Generate_waveform_FRE
                      //Generate_waveform_PERT <= Generate_waveform_FRE * (100 - read_con_buff0[4]) / 100;//计算占空比次数是多少
                      Generate_waveform_LEN <= read_con_buff0[5];//读数据长度
                      //清零读地址，数据，突变长度
                      read_data_value1 <= 8'd0;//	  
                      C_M_AXI_BURST_LEN_VAL1 <= 8'd0;
                      C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE1 <= 32'd0;
                      mst_exec_state_init1 <= 8'd0;//读数据开始复位
                      init_txn_pulse1 <= 1'b1;//复位读信息
                     end
                    else
                     begin
                      read_data_value1 <= 8'd7;//读5个32bit数	 
                      C_M_AXI_BURST_LEN_VAL1 <= 8'd7;//读5个32bit数	 
                      C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE1 <= 32'h0fffffe4;//32'h0fffffe8;//读CMD
                      mst_exec_state_init1 <= INIT_READ;
                      init_txn_pulse1 <= 1'b1;//复位读信息    
                      main_check_step <= 8'd0;//复位状态机
                     end
                 end//reads_done == 1'b1
                end//main_check_step == 8'b1
                else if(main_check_step == 8'd2)
                begin
                  if(main_axi_delay > 1'b0)  
                  begin
                   main_axi_delay <= main_axi_delay - 8'd1;
                  end
                 else  
                   begin 
                    Generate_waveform_PERT <= Generate_waveform_FRE * (100 - read_con_buff0[4]) / 100;//计算占空比次数是多少
                    Generate_waveform_flag <= 8'd1;//产生波形标志置位,开始读波形数据////////////////////////////////////////////////////////////////
                    main_check_step <= 8'd3;
                    
                    if(Generate_waveform_LEN == 8'd12)//指示灯
                     ddr_data_error_led2 <= 1'b0;
                    else
                     ddr_data_error_led2 <= 1'b1;
                   end
                end
                else if(main_check_step == 8'd3)
                begin
                   if(Generate_waveform_end1 == 8'd1)
                   begin
                     Generate_waveform_flag <= 8'd0;
                     main_axi_delay <= 32'd5000000;
                     main_check_step <= 8'd4;
                   end
                end
                else if(main_check_step == 8'd4)
                   begin
                      if(main_axi_delay > 1'b0)  main_axi_delay <= main_axi_delay - 8'd1;
                      else main_check_step <= 1'b0;
                   end
                else
                begin
                   main_check_step <= 8'd0;//复位状态机
                end
              end //M_AXI_ARESETN == 1'b1
	  end///////////////////////////主检测程序////////////////////////////////////////////////////////////////////////////////// 
	  
      	  always @ (posedge M_AXI_ACLK)//数据读取程序//////////////////////////////////////////////////////////////////////////////////                                                                            
	      begin 
	        if((M_AXI_ARESETN == 1'b0) || (Generate_waveform_flag == 1'b0))/////////////////////如果系统复位，复位所有值	
              begin
                //清零读地址，数据，突变长度
                 read_data_value2 <= 8'd0;//	
                 C_M_AXI_BURST_LEN_VAL2 <= 8'd0;	  
                 C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE2 <= 32'd0;
                 data_read_addr <= 32'd0;
                 mst_exec_state_init2 <= 8'd0;//复位读状态机
                 init_txn_pulse2 <= 1'b1;//复位读信息
                 //清零读地址，数据，突变长度
                data_read_step <= 8'd0;//复位状态机
                Generate_arr_waveform <= 8'd0;//通过数组1和2，引脚产生波形标志
                Generate_waveform_end1 <= 8'd0;//用于指令停止   
              end
            else if(data_read_step == 8'd0)///////////////////////////////////////////////////////////////读数组1数据
            begin
                 read_data_value2 <= read_data_value2_def;//read_data_value2 <= 8'd80;//读80个32bit数
                 C_M_AXI_BURST_LEN_VAL2 <= read_data_value2_def;//C_M_AXI_BURST_LEN_VAL2 <= 8'd80;
                 C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE2 <= data_read_addr + 32'h10000000;//读data //   读数组1数据
                 data_read_addr <= data_read_addr + read_data_value2_def_x4;//data_read_addr <= data_read_addr + 32'h140;
				 init_txn_pulse2 <= 1'b1;//禁止读复位
				 mst_exec_state_init2 <= INIT_READ;//读数据开始
				 data_axi_delay <= 8'd5;//增加延时
				 //////////
				 read_arr_CH <= 8'd1;//更新数组1数据
				 data_read_step <= 8'd1;//执行下个状态 
				 
            end  //data_read_step == 8'd0
            else if(data_read_step == 8'd1)//////////////////////////////////////////////等待读数组1完成
            begin
                if(data_axi_delay > 0) data_axi_delay <= data_axi_delay - 1;
               else  init_txn_pulse2 <= 1'b0;//复位读信息
               
               if(read_data_count >= read_data_value2 - 1)
                begin
                  init_txn_pulse2 <= 1'b1;//禁止读复位
                  read_arr_CH <= 8'd0; 
                  data_read_step <= 8'd2;//执行下个状态 
                 end
            end
            else if(data_read_step == 8'd2)//////////////////////////////////////////////产生数组1波形，并读数组2
            begin
                 read_data_value2 <= read_data_value2_def;//read_data_value2 <= 8'd80;//读80个32bit数
                 C_M_AXI_BURST_LEN_VAL2 <= read_data_value2_def;//C_M_AXI_BURST_LEN_VAL2 <= 8'd80;
                 C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE2 <= data_read_addr + 32'h10000000;//读data //   读数组1数据
                 data_read_addr <= data_read_addr + read_data_value2_def_x4;//data_read_addr <= data_read_addr + 32'h140;
				 init_txn_pulse2 <= 1'b1;//禁止读复位
				 mst_exec_state_init2 <= INIT_READ;//读数据开始
				 read_arr_CH <= 8'd2;
				 data_axi_delay <= 8'd5;//增加延时
				 Generate_arr_waveform <= 8'd1;//使能数组1波形
				 data_read_step <= 8'd3;//执行下个状态
            end 
            else if(data_read_step == 8'd3)////////////////////////////////////////////////////数组2读完，数组1波形完成，并清零
            begin                                                                             
              if(data_axi_delay > 0) data_axi_delay <= data_axi_delay - 1;
               else  init_txn_pulse2 <= 1'b0;//复位读信息
               
               if(read_data_count >= read_data_value2 - 1)
                begin
                  init_txn_pulse2 <= 1'b1;//禁止读复位
                  read_arr_CH <= 8'd0; 
                end
                
                if((Arr1_waveform_end == 8'd1) && (read_data_count >= read_data_value2 - 1))//等待数组1完成
               begin  
                 read_data_value2 <= read_data_value2_def;//read_data_value2 <= 8'd80;//读80个32bit数
                 C_M_AXI_BURST_LEN_VAL2 <= read_data_value2_def;//C_M_AXI_BURST_LEN_VAL2 <= 8'd80;
                 C_M_TARGET_SLAVE_BASE_ADDR_VARIABLE2 <= data_read_addr + 32'h10000000;//读data //   读数组1数据
                 data_read_addr <= data_read_addr + read_data_value2_def_x4;//data_read_addr <= data_read_addr + 32'h140;
				 init_txn_pulse2 <= 1'b1;//禁止读复位
				 mst_exec_state_init2 <= INIT_READ;//读数据开始
				 data_axi_delay <= 8'd5;//增加延时
				 //////////
				 read_arr_CH <= 8'd1;//更新数组1数据
                         
				 Generate_arr_waveform <= 8'd3;//清零数组1的值
				 data_read_step <= 8'd4;//执行下个状态 
                end
                
             end
             else if(data_read_step == 8'd4)//产生数组2波形，并读数组1
             begin
                Generate_arr_waveform <= 8'd2;//产生数组2波形
                data_read_step <= 8'd5;//执行下个状态 
             end
             else if(data_read_step == 8'd5)////////////////////////////////////////////////////数组1读完，数组2波形完成，并清零
            begin                                                                             
              if(data_axi_delay > 0) data_axi_delay <= data_axi_delay - 1;
               else  init_txn_pulse2 <= 1'b0;//复位读信息
               
               if(read_data_count >= read_data_value2 - 1)
                begin
                  init_txn_pulse2 <= 1'b1;//禁止读复位
                  read_arr_CH <= 8'd0; 
                end
                
                if((Arr2_waveform_end == 8'd1) && (read_data_count >= read_data_value2 - 1))//等待数组1完成
               begin            
				 Generate_arr_waveform <= 8'd3;//清零数组2的值
				 				 
				 if(Arr_waveform_end == 8'b1)
				 begin
				 Generate_waveform_end1 <= 8'd1;
				 data_read_step <=  8'd6;
				 read_arr_CH <= 8'd0; 
				 end
				 else
				 begin
				 data_read_step <= 8'd2;//执行下个状态 
				 end
                end
             end
             else if(data_read_step == 8'd6)
             begin
             
             end

          end //always
            
                  
          always @ (posedge M_AXI_ACLK)//产生波形程序//////////////////////////////////////////////////////////////////////////////////        0x10000140                                                                    
	      begin 
	        if((M_AXI_ARESETN == 1'b0)||(Generate_arr_waveform == 1'b0))//如果系统复位，复位所有值	
              begin
               Arr_waveform_end <= 8'd0;//数组1通道波形复位
               Arr1_waveform_end <= 8'd0;//数组1通道波形复位
               Arr2_waveform_end <= 8'd0;//数组2通道波形结束
               ch_num <= 8'd0;
               Generate_waveform_LEN_count <= Generate_waveform_LEN * 6;//更新数据总长度
               Generate_waveform_FRE_VAL <= 8'd0;//清零
               PIN_GEN_FLAG <= 8'd0;
              end
            else if(Generate_arr_waveform == 1'b1)  
            begin
                 if(Arr_waveform_end == 8'd0)
                 PIN_GEN_FLAG <= 8'd1;
                 Arr2_waveform_end <= 8'd0;//数组1通道波形 清零
                 if(Generate_waveform_FRE_VAL <  32'd1)
                 begin
                     if(ch_num <= read_data_value2_def_sub6)
                   begin    
                       read_waveform_arr_temp1 <= read_con_buff1[ch_num];
                       read_waveform_arr_temp2 <= read_con_buff1[ch_num + 1];
                       read_waveform_arr_temp3 <= read_con_buff1[ch_num + 2];
                       read_waveform_arr_temp4 <= read_con_buff1[ch_num + 3];
                       read_waveform_arr_temp5 <= read_con_buff1[ch_num + 4];
                       read_waveform_arr_temp6 <= read_con_buff1[ch_num + 5];
                        ch_num <= ch_num + 8'd6;
                        Generate_waveform_FRE_VAL <= Generate_waveform_FRE;
                                      
                       if(Generate_waveform_LEN_count == 8'd0)//如果此时为1，下个上升沿就为0
                        begin
                          Arr_waveform_end <= 8'b1;
                          PIN_GEN_FLAG <= 8'd0;
                          Arr1_waveform_end <= 8'd1;//数组1通道波形结束
                          Arr2_waveform_end <= 8'd1;//数组1通道波形结束
                          ch_num <= read_data_value2_def;
                        end
                        
                        if(Generate_waveform_LEN_count > 8'd0)
                        Generate_waveform_LEN_count <= Generate_waveform_LEN_count - 8'd6;
                        
                        
                   end
                     else//num > 78
                     begin
                      Arr1_waveform_end <= 8'd1;//数组1通道波形结束
                     end  
                 end
                 else 
                  Generate_waveform_FRE_VAL = Generate_waveform_FRE_VAL - 8'd1;
            end
            else if(Generate_arr_waveform == 8'd2)  
            begin
                 if(Arr_waveform_end == 8'd0)
                 PIN_GEN_FLAG <= 8'd1;
                 Arr1_waveform_end <= 8'd0;//数组1通道波形 清零
                 if(Generate_waveform_FRE_VAL <  32'd1)
                 begin
                     if(ch_num <= read_data_value2_def_sub6)
                   begin    
                       read_waveform_arr_temp1 <= read_con_buff2[ch_num];
                       read_waveform_arr_temp2 <= read_con_buff2[ch_num + 1];
                       read_waveform_arr_temp3 <= read_con_buff2[ch_num + 2];
                       read_waveform_arr_temp4 <= read_con_buff2[ch_num + 3];
                       read_waveform_arr_temp5 <= read_con_buff2[ch_num + 4];
                       read_waveform_arr_temp6 <= read_con_buff2[ch_num + 5];
                        ch_num <= ch_num + 8'd6;
                        Generate_waveform_FRE_VAL <= Generate_waveform_FRE;

                       
                       if(Generate_waveform_LEN_count == 8'd0)//如果此时为1，下个上升沿就为0
                        begin
                          Arr_waveform_end <= 8'b1;
                          PIN_GEN_FLAG <= 8'd0;
                          Arr1_waveform_end <= 8'd1;//数组1通道波形结束
                          Arr2_waveform_end <= 8'd1;//数组1通道波形结束
                          ch_num <= read_data_value2_def;
                        end
                        
                        if(Generate_waveform_LEN_count > 8'd0)
                        Generate_waveform_LEN_count <= Generate_waveform_LEN_count - 8'd6;
                   end
                     else//num > 78
                     begin
                      Arr2_waveform_end <= 8'd1;//数组1通道波形结束
                     end  
                 end
                 else 
                 begin
                  Generate_waveform_FRE_VAL = Generate_waveform_FRE_VAL - 8'd1;
                 end
            end
            else if(Generate_arr_waveform == 8'd3)  
            begin
                if(Arr_waveform_end == 8'd0)
                PIN_GEN_FLAG <= 8'd1;
                ch_num <= 8'd0;
            end 
              
        end      
              
              
              
             always @ (posedge M_AXI_ACLK)//引脚驱动//////////////////////////////////////////////////////////////////////////////////read_waveform_arr_temp1   tch1-8                                                                            
	      begin 
	        if((M_AXI_ARESETN == 1'b0)||(Generate_arr_waveform == 1'b0) || (PIN_GEN_FLAG == 1'b0))//如果系统复位，复位所有值	
              begin
                 /////////////////////////////////////////////
                tch1_1 <= 1'd0;tch1_0 <= 1'd0;tch2_1 <= 1'd0;tch2_0 <= 1'd0;tch3_1 <= 1'd0;tch3_0 <= 1'd0;tch4_1 <= 1'd0;tch4_0 <= 1'd0;
                tch5_1 <= 1'd0;tch5_0 <= 1'd0;tch6_1 <= 1'd0;tch6_0 <= 1'd0;tch7_1 <= 1'd0;tch7_0 <= 1'd0;tch8_1 <= 1'd0;tch8_0 <= 1'd0;
              end
            else
            begin 
                   ////////////////////////read_waveform_arr_temp1
                   if((read_waveform_arr_temp1[30+:2] == 2'b11) || (read_waveform_arr_temp1[30+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch1_1 <= 1'b1; tch1_0 <= 1'b1;end else begin tch1_1 <= 1'b0; tch1_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[30+:2] == 2'b01) begin tch1_1 <= 1'b1; tch1_0 <= 1'b0; end
                   else begin tch1_1 <= 1'b0; tch1_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp1[28+:2] == 2'b11) || (read_waveform_arr_temp1[28+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch2_1 <= 1'b1; tch2_0 <= 1'b1;end else begin tch2_1 <= 1'b0; tch2_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[28+:2] == 2'b01) begin tch2_1 <= 1'b1; tch2_0 <= 1'b0; end
                   else begin tch2_1 <= 1'b0; tch2_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp1[26+:2] == 2'b11) || (read_waveform_arr_temp1[26+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch3_1 <= 1'b1; tch3_0 <= 1'b1;end else begin tch3_1 <= 1'b0; tch3_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[26+:2] == 2'b01) begin tch3_1 <= 1'b1; tch3_0 <= 1'b0; end
                   else begin tch3_1 <= 1'b0; tch3_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp1[24+:2] == 2'b11) || (read_waveform_arr_temp1[24+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch4_1 <= 1'b1; tch4_0 <= 1'b1;end else begin tch4_1 <= 1'b0; tch4_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[24+:2] == 2'b01) begin tch4_1 <= 1'b1; tch4_0 <= 1'b0; end
                   else begin tch4_1 <= 1'b0; tch4_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp1[22+:2] == 2'b11) || (read_waveform_arr_temp1[22+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch5_1 <= 1'b1; tch5_0 <= 1'b1;end else begin tch5_1 <= 1'b0; tch5_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[22+:2] == 2'b01) begin tch5_1 <= 1'b1; tch5_0 <= 1'b0; end
                   else begin tch5_1 <= 1'b0; tch5_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp1[20+:2] == 2'b11) || (read_waveform_arr_temp1[20+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch6_1 <= 1'b1; tch6_0 <= 1'b1;end else begin tch6_1 <= 1'b0; tch6_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[20+:2] == 2'b01) begin tch6_1 <= 1'b1; tch6_0 <= 1'b0; end
                   else begin tch6_1 <= 1'b0; tch6_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp1[18+:2] == 2'b11) || (read_waveform_arr_temp1[18+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch7_1 <= 1'b1; tch7_0 <= 1'b1;end else begin tch7_1 <= 1'b0; tch7_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[18+:2] == 2'b01) begin tch7_1 <= 1'b1; tch7_0 <= 1'b0; end
                   else begin tch7_1 <= 1'b0; tch7_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp1[16+:2] == 2'b11) || (read_waveform_arr_temp1[16+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch8_1 <= 1'b1; tch8_0 <= 1'b1;end else begin tch8_1 <= 1'b0; tch8_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[16+:2] == 2'b01) begin tch8_1 <= 1'b1; tch8_0 <= 1'b0; end
                   else begin tch8_1 <= 1'b0; tch8_0 <= 1'b0; end  
            end    
          end
          
          
              always @ (posedge M_AXI_ACLK)//引脚驱动//////////////////////////////////////////////////////////////////////////////////read_waveform_arr_temp1   tch9-16                                                                            
	      begin 
	        if((M_AXI_ARESETN == 1'b0)||(Generate_arr_waveform == 1'b0) || (PIN_GEN_FLAG == 1'b0))//如果系统复位，复位所有值	
              begin
                 /////////////////////////////////////////////
                tch9_1 <= 1'd0;tch9_0 <= 1'd0;tch10_1 <= 1'd0;tch10_0 <= 1'd0;tch11_1 <= 1'd0;tch11_0 <= 1'd0;tch12_1 <= 1'd0;tch12_0 <= 1'd0;
                tch13_1 <= 1'd0;tch13_0 <= 1'd0;tch14_1 <= 1'd0;tch14_0 <= 1'd0;tch15_1 <= 1'd0;tch15_0 <= 1'd0;tch16_1 <= 1'd0;tch16_0 <= 1'd0;
              end
            else
            begin
                    if((read_waveform_arr_temp1[14+:2] == 2'b11) || (read_waveform_arr_temp1[14+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch9_1 <= 1'b1; tch9_0 <= 1'b1;end else begin tch9_1 <= 1'b0; tch9_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[14+:2] == 2'b01) begin tch9_1 <= 1'b1; tch9_0 <= 1'b0; end
                   else begin tch9_1 <= 1'b0; tch9_0 <= 1'b0; end
                   
                   
                   if((read_waveform_arr_temp1[12+:2] == 2'b11) || (read_waveform_arr_temp1[12+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch10_1 <= 1'b1; tch10_0 <= 1'b1;end else begin tch10_1 <= 1'b0; tch10_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[12+:2] == 2'b01) begin tch10_1 <= 1'b1; tch10_0 <= 1'b0; end
                   else begin tch10_1 <= 1'b0; tch10_0 <= 1'b0; end
                   
                   
                   if((read_waveform_arr_temp1[10+:2] == 2'b11) || (read_waveform_arr_temp1[10+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch11_1 <= 1'b1; tch11_0 <= 1'b1;end else begin tch11_1 <= 1'b0; tch11_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[10+:2] == 2'b01) begin tch11_1 <= 1'b1; tch11_0 <= 1'b0; end
                   else begin tch11_1 <= 1'b0; tch11_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp1[8+:2] == 2'b11) || (read_waveform_arr_temp1[8+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch12_1 <= 1'b1; tch12_0 <= 1'b1;end else begin tch12_1 <= 1'b0; tch12_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[8+:2] == 2'b01) begin tch12_1 <= 1'b1; tch12_0 <= 1'b0; end
                   else begin tch12_1 <= 1'b0; tch12_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp1[6+:2] == 2'b11) || (read_waveform_arr_temp1[6+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch13_1 <= 1'b1; tch13_0 <= 1'b1;end else begin tch13_1 <= 1'b0; tch13_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[6+:2] == 2'b01) begin tch13_1 <= 1'b1; tch13_0 <= 1'b0; end
                   else begin tch13_1 <= 1'b0; tch13_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp1[4+:2] == 2'b11) || (read_waveform_arr_temp1[4+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch14_1 <= 1'b1; tch14_0 <= 1'b1;end else begin tch14_1 <= 1'b0; tch14_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[4+:2] == 2'b01) begin tch14_1 <= 1'b1; tch14_0 <= 1'b0; end
                   else begin tch14_1 <= 1'b0; tch14_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp1[2+:2] == 2'b11) || (read_waveform_arr_temp1[2+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch15_1 <= 1'b1; tch15_0 <= 1'b1;end else begin tch15_1 <= 1'b0; tch15_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[2+:2] == 2'b01) begin tch15_1 <= 1'b1; tch15_0 <= 1'b0; end
                   else begin tch15_1 <= 1'b0; tch15_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp1[0+:2] == 2'b11) || (read_waveform_arr_temp1[0+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch16_1 <= 1'b1; tch16_0 <= 1'b1;end else begin tch16_1 <= 1'b0; tch16_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp1[0+:2] == 2'b01) begin tch16_1 <= 1'b1; tch16_0 <= 1'b0; end
                   else begin tch16_1 <= 1'b0; tch16_0 <= 1'b0; end 
            end
          end
          

          always @ (posedge M_AXI_ACLK)//引脚驱动//////////////////////////////////////////////////////////////////////////////////read_waveform_arr_temp2   tch17-24                                                                         
	      begin 
	        if((M_AXI_ARESETN == 1'b0)||(Generate_arr_waveform == 1'b0) || (PIN_GEN_FLAG == 1'b0))//如果系统复位，复位所有值	
              begin
                 /////////////////////////////////////////////
                tch17_1 <= 1'd0;tch17_0 <= 1'd0;tch18_1 <= 1'd0;tch18_0 <= 1'd0;tch19_1 <= 1'd0;tch19_0 <= 1'd0;tch20_1 <= 1'd0;tch20_0 <= 1'd0;//20
                tch21_1 <= 1'd0;tch21_0 <= 1'd0;tch22_1 <= 1'd0;tch22_0 <= 1'd0;tch23_1 <= 1'd0;tch23_0 <= 1'd0;tch24_1 <= 1'd0;tch24_0 <= 1'd0;
              end
            else
            begin 
            ////////////////////////read_waveform_arr_temp2
                   if((read_waveform_arr_temp2[30+:2] == 2'b11) || (read_waveform_arr_temp2[30+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch17_1 <= 1'b1; tch17_0 <= 1'b1;end else begin tch17_1 <= 1'b0; tch17_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[30+:2] == 2'b01) begin tch17_1 <= 1'b1; tch17_0 <= 1'b0; end
                   else begin tch17_1 <= 1'b0; tch17_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp2[28+:2] == 2'b11) || (read_waveform_arr_temp2[28+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch18_1 <= 1'b1; tch18_0 <= 1'b1;end else begin tch18_1 <= 1'b0; tch18_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[28+:2] == 2'b01) begin tch18_1 <= 1'b1; tch18_0 <= 1'b0; end
                   else begin tch18_1 <= 1'b0; tch18_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp2[26+:2] == 2'b11) || (read_waveform_arr_temp2[26+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch19_1 <= 1'b1; tch19_0 <= 1'b1;end else begin tch19_1 <= 1'b0; tch19_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[26+:2] == 2'b01) begin tch19_1 <= 1'b1; tch19_0 <= 1'b0; end
                   else begin tch19_1 <= 1'b0; tch19_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp2[24+:2] == 2'b11) || (read_waveform_arr_temp2[24+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch20_1 <= 1'b1; tch20_0 <= 1'b1;end else begin tch20_1 <= 1'b0; tch20_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[24+:2] == 2'b01) begin tch20_1 <= 1'b1; tch20_0 <= 1'b0; end
                   else begin tch20_1 <= 1'b0; tch20_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp2[22+:2] == 2'b11) || (read_waveform_arr_temp2[22+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch21_1 <= 1'b1; tch21_0 <= 1'b1;end else begin tch21_1 <= 1'b0; tch21_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[22+:2] == 2'b01) begin tch21_1 <= 1'b1; tch21_0 <= 1'b0; end
                   else begin tch21_1 <= 1'b0; tch21_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp2[20+:2] == 2'b11) || (read_waveform_arr_temp2[20+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch22_1 <= 1'b1; tch22_0 <= 1'b1;end else begin tch22_1 <= 1'b0; tch22_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[20+:2] == 2'b01) begin tch22_1 <= 1'b1; tch22_0 <= 1'b0; end
                   else begin tch22_1 <= 1'b0; tch22_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp2[18+:2] == 2'b11) || (read_waveform_arr_temp2[18+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch23_1 <= 1'b1; tch23_0 <= 1'b1;end else begin tch23_1 <= 1'b0; tch23_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[18+:2] == 2'b01) begin tch23_1 <= 1'b1; tch23_0 <= 1'b0; end
                   else begin tch23_1 <= 1'b0; tch23_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp2[16+:2] == 2'b11) || (read_waveform_arr_temp2[16+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch24_1 <= 1'b1; tch24_0 <= 1'b1;end else begin tch24_1 <= 1'b0; tch24_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[16+:2] == 2'b01) begin tch24_1 <= 1'b1; tch24_0 <= 1'b0; end
                   else begin tch24_1 <= 1'b0; tch24_0 <= 1'b0; end
            end
            end
            
                      always @ (posedge M_AXI_ACLK)//引脚驱动//////////////////////////////////////////////////////////////////////////////////read_waveform_arr_temp2   tch25-32                                                                             
	      begin 
	        if((M_AXI_ARESETN == 1'b0)||(Generate_arr_waveform == 1'b0) || (PIN_GEN_FLAG == 1'b0))//如果系统复位，复位所有值	
              begin
                 /////////////////////////////////////////////
                tch25_1 <= 1'd0;tch25_0 <= 1'd0;tch26_1 <= 1'd0;tch26_0 <= 1'd0;tch27_1 <= 1'd0;tch27_0 <= 1'd0;tch28_1 <= 1'd0;tch28_0 <= 1'd0;
                tch29_1 <= 1'd0;tch29_0 <= 1'd0;tch30_1 <= 1'd0;tch30_0 <= 1'd0;tch31_1 <= 1'd0;tch31_0 <= 1'd0;tch32_1 <= 1'd0;tch32_0 <= 1'd0;
              end
            else
            begin 
                    if((read_waveform_arr_temp2[14+:2] == 2'b11) || (read_waveform_arr_temp2[14+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch25_1 <= 1'b1; tch25_0 <= 1'b1;end else begin tch25_1 <= 1'b0; tch25_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[14+:2] == 2'b01) begin tch25_1 <= 1'b1; tch25_0 <= 1'b0; end
                   else begin tch25_1 <= 1'b0; tch25_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp2[12+:2] == 2'b11) || (read_waveform_arr_temp2[12+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch26_1 <= 1'b1; tch26_0 <= 1'b1;end else begin tch26_1 <= 1'b0; tch26_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[12+:2] == 2'b01) begin tch26_1 <= 1'b1; tch26_0 <= 1'b0; end
                   else begin tch26_1 <= 1'b0; tch26_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp2[10+:2] == 2'b11) || (read_waveform_arr_temp2[10+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch27_1 <= 1'b1; tch27_0 <= 1'b1;end else begin tch27_1 <= 1'b0; tch27_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[10+:2] == 2'b01) begin tch27_1 <= 1'b1; tch27_0 <= 1'b0; end
                   else begin tch27_1 <= 1'b0; tch27_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp2[8+:2] == 2'b11) || (read_waveform_arr_temp2[8+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch28_1 <= 1'b1; tch28_0 <= 1'b1;end else begin tch28_1 <= 1'b0; tch28_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[8+:2] == 2'b01) begin tch28_1 <= 1'b1; tch28_0 <= 1'b0; end
                   else begin tch28_1 <= 1'b0; tch28_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp2[6+:2] == 2'b11) || (read_waveform_arr_temp2[6+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch29_1 <= 1'b1; tch29_0 <= 1'b1;end else begin tch29_1 <= 1'b0; tch29_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[6+:2] == 2'b01) begin tch29_1 <= 1'b1; tch29_0 <= 1'b0; end
                   else begin tch29_1 <= 1'b0; tch29_0 <= 1'b0; end
                   
                   
                   if((read_waveform_arr_temp2[4+:2] == 2'b11) || (read_waveform_arr_temp2[4+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch30_1 <= 1'b1; tch30_0 <= 1'b1;end else begin tch30_1 <= 1'b0; tch30_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[4+:2] == 2'b01) begin tch30_1 <= 1'b1; tch30_0 <= 1'b0; end
                   else begin tch30_1 <= 1'b0; tch30_0 <= 1'b0; end
                   
                   
                   if((read_waveform_arr_temp2[2+:2] == 2'b11) || (read_waveform_arr_temp2[2+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch31_1 <= 1'b1; tch31_0 <= 1'b1;end else begin tch31_1 <= 1'b0; tch31_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[2+:2] == 2'b01) begin tch31_1 <= 1'b1; tch31_0 <= 1'b0; end
                   else begin tch31_1 <= 1'b0; tch31_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp2[0+:2] == 2'b11) || (read_waveform_arr_temp2[0+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch32_1 <= 1'b1; tch32_0 <= 1'b1;end else begin tch32_1 <= 1'b0; tch32_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp2[0+:2] == 2'b01) begin tch32_1 <= 1'b1; tch32_0 <= 1'b0; end
                   else begin tch32_1 <= 1'b0; tch32_0 <= 1'b0; end
            end
            end
            
          always @ (posedge M_AXI_ACLK)//引脚驱动//////////////////////////////////////////////////////////////////////////////////read_waveform_arr_temp3   tch33-40                                                                               
	      begin 
	        if((M_AXI_ARESETN == 1'b0)||(Generate_arr_waveform == 1'b0) || (PIN_GEN_FLAG == 1'b0))//如果系统复位，复位所有值	
              begin
                 /////////////////////////////////////////////
                tch33_1 <= 1'd0;tch33_0 <= 1'd0;tch34_1 <= 1'd0;tch34_0 <= 1'd0;tch35_1 <= 1'd0;tch35_0 <= 1'd0;tch36_1 <= 1'd0;tch36_0 <= 1'd0;
                tch37_1 <= 1'd0;tch37_0 <= 1'd0;tch38_1 <= 1'd0;tch38_0 <= 1'd0;tch39_1 <= 1'd0;tch39_0 <= 1'd0;tch40_1 <= 1'd0;tch40_0 <= 1'd0;//40
              end
            else
            begin 
             ///////////////////////////////read_waveform_arr_temp3
                   if((read_waveform_arr_temp3[30+:2] == 2'b11) || (read_waveform_arr_temp3[30+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch33_1 <= 1'b1; tch33_0 <= 1'b1;end else begin tch33_1 <= 1'b0; tch33_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[30+:2] == 2'b01) begin tch33_1 <= 1'b1; tch33_0 <= 1'b0; end
                   else begin tch33_1 <= 1'b0; tch33_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp3[28+:2] == 2'b11) || (read_waveform_arr_temp3[28+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch34_1 <= 1'b1; tch34_0 <= 1'b1;end else begin tch34_1 <= 1'b0; tch34_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[28+:2] == 2'b01) begin tch34_1 <= 1'b1; tch34_0 <= 1'b0; end
                   else begin tch34_1 <= 1'b0; tch34_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp3[26+:2] == 2'b11) || (read_waveform_arr_temp3[26+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch35_1 <= 1'b1; tch35_0 <= 1'b1;end else begin tch35_1 <= 1'b0; tch35_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[26+:2] == 2'b01) begin tch35_1 <= 1'b1; tch35_0 <= 1'b0; end
                   else begin tch35_1 <= 1'b0; tch35_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp3[24+:2] == 2'b11) || (read_waveform_arr_temp3[24+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch36_1 <= 1'b1; tch36_0 <= 1'b1;end else begin tch36_1 <= 1'b0; tch36_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[24+:2] == 2'b01) begin tch36_1 <= 1'b1; tch36_0 <= 1'b0; end
                   else begin tch36_1 <= 1'b0; tch36_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp3[22+:2] == 2'b11) || (read_waveform_arr_temp3[22+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch37_1 <= 1'b1; tch37_0 <= 1'b1;end else begin tch37_1 <= 1'b0; tch37_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[22+:2] == 2'b01) begin tch37_1 <= 1'b1; tch37_0 <= 1'b0; end
                   else begin tch37_1 <= 1'b0; tch37_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp3[20+:2] == 2'b11) || (read_waveform_arr_temp3[20+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch38_1 <= 1'b1; tch38_0 <= 1'b1;end else begin tch38_1 <= 1'b0; tch38_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[20+:2] == 2'b01) begin tch38_1 <= 1'b1; tch38_0 <= 1'b0; end
                   else begin tch38_1 <= 1'b0; tch38_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp3[18+:2] == 2'b11) || (read_waveform_arr_temp3[18+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch39_1 <= 1'b1; tch39_0 <= 1'b1;end else begin tch39_1 <= 1'b0; tch39_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[18+:2] == 2'b01) begin tch39_1 <= 1'b1; tch39_0 <= 1'b0; end
                   else begin tch39_1 <= 1'b0; tch39_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp3[16+:2] == 2'b11) || (read_waveform_arr_temp3[16+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch40_1 <= 1'b1; tch40_0 <= 1'b1;end else begin tch40_1 <= 1'b0; tch40_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[16+:2] == 2'b01) begin tch40_1 <= 1'b1; tch40_0 <= 1'b0; end
                   else begin tch40_1 <= 1'b0; tch40_0 <= 1'b0; end
            end
            end
            
                always @ (posedge M_AXI_ACLK)//引脚驱动//////////////////////////////////////////////////////////////////////////////////read_waveform_arr_temp3   tch41-48                                                                               
	      begin 
	        if((M_AXI_ARESETN == 1'b0)||(Generate_arr_waveform == 1'b0) || (PIN_GEN_FLAG == 1'b0))//如果系统复位，复位所有值	
              begin
                 /////////////////////////////////////////////
                tch41_1 <= 1'd0;tch41_0 <= 1'd0;tch42_1 <= 1'd0;tch42_0 <= 1'd0;tch43_1 <= 1'd0;tch43_0 <= 1'd0;tch44_1 <= 1'd0;tch44_0 <= 1'd0;
                tch45_1 <= 1'd0;tch45_0 <= 1'd0;tch46_1 <= 1'd0;tch46_0 <= 1'd0;tch47_1 <= 1'd0;tch47_0 <= 1'd0;tch48_1 <= 1'd0;tch48_0 <= 1'd0;
              end
            else
            begin                  
                   if((read_waveform_arr_temp3[14+:2] == 2'b11) || (read_waveform_arr_temp3[14+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch41_1 <= 1'b1; tch41_0 <= 1'b1;end else begin tch41_1 <= 1'b0; tch41_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[14+:2] == 2'b01) begin tch41_1 <= 1'b1; tch41_0 <= 1'b0; end
                   else begin tch41_1 <= 1'b0; tch41_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp3[12+:2] == 2'b11) || (read_waveform_arr_temp3[12+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch42_1 <= 1'b1; tch42_0 <= 1'b1;end else begin tch42_1 <= 1'b0; tch42_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[12+:2] == 2'b01) begin tch42_1 <= 1'b1; tch42_0 <= 1'b0; end
                   else begin tch42_1 <= 1'b0; tch42_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp3[10+:2] == 2'b11) || (read_waveform_arr_temp3[10+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch43_1 <= 1'b1; tch43_0 <= 1'b1;end else begin tch43_1 <= 1'b0; tch43_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[10+:2] == 2'b01) begin tch43_1 <= 1'b1; tch43_0 <= 1'b0; end
                   else begin tch43_1 <= 1'b0; tch43_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp3[8+:2] == 2'b11) || (read_waveform_arr_temp3[8+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch44_1 <= 1'b1; tch44_0 <= 1'b1;end else begin tch44_1 <= 1'b0; tch44_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[8+:2] == 2'b01) begin tch44_1 <= 1'b1; tch44_0 <= 1'b0; end
                   else begin tch44_1 <= 1'b0; tch44_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp3[6+:2] == 2'b11) || (read_waveform_arr_temp3[6+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch45_1 <= 1'b1; tch45_0 <= 1'b1;end else begin tch45_1 <= 1'b0; tch45_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[6+:2] == 2'b01) begin tch45_1 <= 1'b1; tch45_0 <= 1'b0; end
                   else begin tch45_1 <= 1'b0; tch45_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp3[4+:2] == 2'b11) || (read_waveform_arr_temp3[4+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch46_1 <= 1'b1; tch46_0 <= 1'b1;end else begin tch46_1 <= 1'b0; tch46_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[4+:2] == 2'b01) begin tch46_1 <= 1'b1; tch46_0 <= 1'b0; end
                   else begin tch46_1 <= 1'b0; tch46_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp3[2+:2] == 2'b11) || (read_waveform_arr_temp3[2+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch47_1 <= 1'b1; tch47_0 <= 1'b1;end else begin tch47_1 <= 1'b0; tch47_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[2+:2] == 2'b01) begin tch47_1 <= 1'b1; tch47_0 <= 1'b0; end
                   else begin tch47_1 <= 1'b0; tch47_0 <= 1'b0; end
                   
                   if((read_waveform_arr_temp3[0+:2] == 2'b11) || (read_waveform_arr_temp3[0+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch48_1 <= 1'b1; tch48_0 <= 1'b1;end else begin tch48_1 <= 1'b0; tch48_0 <= 1'b0; end end
                   else if(read_waveform_arr_temp3[0+:2] == 2'b01) begin tch48_1 <= 1'b1; tch48_0 <= 1'b0; end
                   else begin tch48_1 <= 1'b0; tch48_0 <= 1'b0; end
            end
            end
            
          always @ (posedge M_AXI_ACLK)//引脚驱动//////////////////////////////////////////////////////////////////////////////////read_waveform_arr_temp4   tch49-56                                                                        
	      begin 
	        if((M_AXI_ARESETN == 1'b0)||(Generate_arr_waveform == 1'b0) || (PIN_GEN_FLAG == 1'b0))//如果系统复位，复位所有值	
              begin
                 /////////////////////////////////////////////
                tch49_1 <= 1'd0;tch49_0 <= 1'd0;tch50_1 <= 1'd0;tch50_0 <= 1'd0;tch51_1 <= 1'd0;tch51_0 <= 1'd0;tch52_1 <= 1'd0;tch52_0 <= 1'd0;
                tch53_1 <= 1'd0;tch53_0 <= 1'd0;tch54_1 <= 1'd0;tch54_0 <= 1'd0;tch55_1 <= 1'd0;tch55_0 <= 1'd0;tch56_1 <= 1'd0;tch56_0 <= 1'd0;
              end
            else
            begin 
               if((read_waveform_arr_temp4[30+:2] == 2'b11) || (read_waveform_arr_temp4[30+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch49_1 <= 1'b1; tch49_0 <= 1'b1;end else begin tch49_1 <= 1'b0; tch49_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[30+:2] == 2'b01) begin tch49_1 <= 1'b1; tch49_0 <= 1'b0; end
               else begin tch49_1 <= 1'b0; tch49_0 <= 1'b0; end
                
               if((read_waveform_arr_temp4[28+:2] == 2'b11) || (read_waveform_arr_temp4[28+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch50_1 <= 1'b1; tch50_0 <= 1'b1;end else begin tch50_1 <= 1'b0; tch50_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[28+:2] == 2'b01) begin tch50_1 <= 1'b1; tch50_0 <= 1'b0; end
               else begin tch50_1 <= 1'b0; tch50_0 <= 1'b0; end
               
               if((read_waveform_arr_temp4[26+:2] == 2'b11) || (read_waveform_arr_temp4[26+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch51_1 <= 1'b1; tch51_0 <= 1'b1;end else begin tch51_1 <= 1'b0; tch51_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[26+:2] == 2'b01) begin tch51_1 <= 1'b1; tch51_0 <= 1'b0; end
               else begin tch51_1 <= 1'b0; tch51_0 <= 1'b0; end
               
               if((read_waveform_arr_temp4[24+:2] == 2'b11) || (read_waveform_arr_temp4[24+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch52_1 <= 1'b1; tch52_0 <= 1'b1;end else begin tch52_1 <= 1'b0; tch52_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[24+:2] == 2'b01) begin tch52_1 <= 1'b1; tch52_0 <= 1'b0; end
               else begin tch52_1 <= 1'b0; tch52_0 <= 1'b0; end
               
               if((read_waveform_arr_temp4[22+:2] == 2'b11) || (read_waveform_arr_temp4[22+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch53_1 <= 1'b1; tch53_0 <= 1'b1;end else begin tch53_1 <= 1'b0; tch53_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[22+:2] == 2'b01) begin tch53_1 <= 1'b1; tch53_0 <= 1'b0; end
               else begin tch53_1 <= 1'b0; tch53_0 <= 1'b0; end
               
               if((read_waveform_arr_temp4[20+:2] == 2'b11) || (read_waveform_arr_temp4[20+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch54_1 <= 1'b1; tch54_0 <= 1'b1;end else begin tch54_1 <= 1'b0; tch54_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[20+:2] == 2'b01) begin tch54_1 <= 1'b1; tch54_0 <= 1'b0; end
               else begin tch54_1 <= 1'b0; tch54_0 <= 1'b0; end
               
               if((read_waveform_arr_temp4[18+:2] == 2'b11) || (read_waveform_arr_temp4[18+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch55_1 <= 1'b1; tch55_0 <= 1'b1;end else begin tch55_1 <= 1'b0; tch55_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[18+:2] == 2'b01) begin tch55_1 <= 1'b1; tch55_0 <= 1'b0; end
               else begin tch55_1 <= 1'b0; tch55_0 <= 1'b0; end
               
               if((read_waveform_arr_temp4[16+:2] == 2'b11) || (read_waveform_arr_temp4[16+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch56_1 <= 1'b1; tch56_0 <= 1'b1;end else begin tch56_1 <= 1'b0; tch56_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[16+:2] == 2'b01) begin tch56_1 <= 1'b1; tch56_0 <= 1'b0; end
               else begin tch56_1 <= 1'b0; tch56_0 <= 1'b0; end
            end
            end
            
                      always @ (posedge M_AXI_ACLK)//引脚驱动//////////////////////////////////////////////////////////////////////////////////read_waveform_arr_temp4   tch57-64                                                                        
	      begin 
	        if((M_AXI_ARESETN == 1'b0)||(Generate_arr_waveform == 1'b0) || (PIN_GEN_FLAG == 1'b0))//如果系统复位，复位所有值	
              begin
                 /////////////////////////////////////////////
                tch57_1 <= 1'd0;tch57_0 <= 1'd0;tch58_1 <= 1'd0;tch58_0 <= 1'd0;tch59_1 <= 1'd0;tch59_0 <= 1'd0;tch60_1 <= 1'd0;tch60_0 <= 1'd0;//60
                tch61_1 <= 1'd0;tch61_0 <= 1'd0;tch62_1 <= 1'd0;tch62_0 <= 1'd0;tch63_1 <= 1'd0;tch63_0 <= 1'd0;tch64_1 <= 1'd0;tch64_0 <= 1'd0;
              end
            else
            begin 
               if((read_waveform_arr_temp4[14+:2] == 2'b11) || (read_waveform_arr_temp4[14+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch57_1 <= 1'b1; tch57_0 <= 1'b1;end else begin tch57_1 <= 1'b0; tch57_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[14+:2] == 2'b01) begin tch57_1 <= 1'b1; tch57_0 <= 1'b0; end
               else begin tch57_1 <= 1'b0; tch57_0 <= 1'b0; end
               
               if((read_waveform_arr_temp4[12+:2] == 2'b11) || (read_waveform_arr_temp4[12+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch58_1 <= 1'b1; tch58_0 <= 1'b1;end else begin tch58_1 <= 1'b0; tch58_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[12+:2] == 2'b01) begin tch58_1 <= 1'b1; tch58_0 <= 1'b0; end
               else begin tch58_1 <= 1'b0; tch58_0 <= 1'b0; end
               
               if((read_waveform_arr_temp4[10+:2] == 2'b11) || (read_waveform_arr_temp4[10+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch59_1 <= 1'b1; tch59_0 <= 1'b1;end else begin tch59_1 <= 1'b0; tch59_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[10+:2] == 2'b01) begin tch59_1 <= 1'b1; tch59_0 <= 1'b0; end
               else begin tch59_1 <= 1'b0; tch59_0 <= 1'b0; end
               
               if((read_waveform_arr_temp4[8+:2] == 2'b11) || (read_waveform_arr_temp4[8+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch60_1 <= 1'b1; tch60_0 <= 1'b1;end else begin tch60_1 <= 1'b0; tch60_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[8+:2] == 2'b01) begin tch60_1 <= 1'b1; tch60_0 <= 1'b0; end
               else begin tch60_1 <= 1'b0; tch60_0 <= 1'b0; end
               
               if((read_waveform_arr_temp4[6+:2] == 2'b11) || (read_waveform_arr_temp4[6+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch61_1 <= 1'b1; tch61_0 <= 1'b1;end else begin tch61_1 <= 1'b0; tch61_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[6+:2] == 2'b01) begin tch61_1 <= 1'b1; tch61_0 <= 1'b0; end
               else begin tch61_1 <= 1'b0; tch61_0 <= 1'b0; end
               
               if((read_waveform_arr_temp4[4+:2] == 2'b11) || (read_waveform_arr_temp4[4+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch62_1 <= 1'b1; tch62_0 <= 1'b1;end else begin tch62_1 <= 1'b0; tch62_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[4+:2] == 2'b01) begin tch62_1 <= 1'b1; tch62_0 <= 1'b0; end
               else begin tch62_1 <= 1'b0; tch62_0 <= 1'b0; end
               
               if((read_waveform_arr_temp4[2+:2] == 2'b11) || (read_waveform_arr_temp4[2+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch63_1 <= 1'b1; tch63_0 <= 1'b1;end else begin tch63_1 <= 1'b0; tch63_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[2+:2] == 2'b01) begin tch63_1 <= 1'b1; tch63_0 <= 1'b0; end
               else begin tch63_1 <= 1'b0; tch63_0 <= 1'b0; end
               
               if((read_waveform_arr_temp4[0+:2] == 2'b11) || (read_waveform_arr_temp4[0+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch64_1 <= 1'b1; tch64_0 <= 1'b1;end else begin tch64_1 <= 1'b0; tch64_0 <= 1'b0; end end
               else if(read_waveform_arr_temp4[0+:2] == 2'b01) begin tch64_1 <= 1'b1; tch64_0 <= 1'b0; end
               else begin tch64_1 <= 1'b0; tch64_0 <= 1'b0; end
            end
            end
            
          always @ (posedge M_AXI_ACLK)//引脚驱动//////////////////////////////////////////////////////////////////////////////////read_waveform_arr_temp5   tch65-72                                                                             
	      begin 
	        if((M_AXI_ARESETN == 1'b0)||(Generate_arr_waveform == 1'b0) || (PIN_GEN_FLAG == 1'b0))//如果系统复位，复位所有值	
              begin
                 /////////////////////////////////////////////
                tch65_1 <= 1'd0;tch65_0 <= 1'd0;tch66_1 <= 1'd0;tch66_0 <= 1'd0;tch67_1 <= 1'd0;tch67_0 <= 1'd0;tch68_1 <= 1'd0;tch68_0 <= 1'd0;
                tch69_1 <= 1'd0;tch69_0 <= 1'd0;tch70_1 <= 1'd0;tch70_0 <= 1'd0;tch71_1 <= 1'd0;tch71_0 <= 1'd0;tch72_1 <= 1'd0;tch72_0 <= 1'd0;
               end
            else
            begin 
               if((read_waveform_arr_temp5[30+:2] == 2'b11) || (read_waveform_arr_temp5[30+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch65_1 <= 1'b1; tch65_0 <= 1'b1;end else begin tch65_1 <= 1'b0; tch65_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[30+:2] == 2'b01) begin tch65_1 <= 1'b1; tch65_0 <= 1'b0; end
               else begin tch65_1 <= 1'b0; tch65_0 <= 1'b0; end
               
               if((read_waveform_arr_temp5[28+:2] == 2'b11) || (read_waveform_arr_temp5[28+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch66_1 <= 1'b1; tch66_0 <= 1'b1;end else begin tch66_1 <= 1'b0; tch66_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[28+:2] == 2'b01) begin tch66_1 <= 1'b1; tch66_0 <= 1'b0; end
               else begin tch66_1 <= 1'b0; tch66_0 <= 1'b0; end
               
               if((read_waveform_arr_temp5[26+:2] == 2'b11) || (read_waveform_arr_temp5[26+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch67_1 <= 1'b1; tch67_0 <= 1'b1;end else begin tch67_1 <= 1'b0; tch67_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[26+:2] == 2'b01) begin tch67_1 <= 1'b1; tch67_0 <= 1'b0; end
               else begin tch67_1 <= 1'b0; tch67_0 <= 1'b0; end
               
               if((read_waveform_arr_temp5[24+:2] == 2'b11) || (read_waveform_arr_temp5[24+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch68_1 <= 1'b1; tch68_0 <= 1'b1;end else begin tch68_1 <= 1'b0; tch68_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[24+:2] == 2'b01) begin tch68_1 <= 1'b1; tch68_0 <= 1'b0; end
               else begin tch68_1 <= 1'b0; tch68_0 <= 1'b0; end
               
               if((read_waveform_arr_temp5[22+:2] == 2'b11) || (read_waveform_arr_temp5[22+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch69_1 <= 1'b1; tch69_0 <= 1'b1;end else begin tch69_1 <= 1'b0; tch69_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[22+:2] == 2'b01) begin tch69_1 <= 1'b1; tch69_0 <= 1'b0; end
               else begin tch69_1 <= 1'b0; tch69_0 <= 1'b0; end
               
               if((read_waveform_arr_temp5[20+:2] == 2'b11) || (read_waveform_arr_temp5[20+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch70_1 <= 1'b1; tch70_0 <= 1'b1;end else begin tch70_1 <= 1'b0; tch70_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[20+:2] == 2'b01) begin tch70_1 <= 1'b1; tch70_0 <= 1'b0; end
               else begin tch70_1 <= 1'b0; tch70_0 <= 1'b0; end
               
               if((read_waveform_arr_temp5[18+:2] == 2'b11) || (read_waveform_arr_temp5[18+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch71_1 <= 1'b1; tch71_0 <= 1'b1;end else begin tch71_1 <= 1'b0; tch71_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[18+:2] == 2'b01) begin tch71_1 <= 1'b1; tch71_0 <= 1'b0; end
               else begin tch71_1 <= 1'b0; tch71_0 <= 1'b0; end
               
               if((read_waveform_arr_temp5[16+:2] == 2'b11) || (read_waveform_arr_temp5[16+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch72_1 <= 1'b1; tch72_0 <= 1'b1;end else begin tch72_1 <= 1'b0; tch72_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[16+:2] == 2'b01) begin tch72_1 <= 1'b1; tch72_0 <= 1'b0; end
               else begin tch72_1 <= 1'b0; tch72_0 <= 1'b0; end
            end
            end
            
            
                      always @ (posedge M_AXI_ACLK)//引脚驱动//////////////////////////////////////////////////////////////////////////////////read_waveform_arr_temp5   tch73-80                                                                             
	      begin 
	        if((M_AXI_ARESETN == 1'b0)||(Generate_arr_waveform == 1'b0) || (PIN_GEN_FLAG == 1'b0))//如果系统复位，复位所有值	
              begin
                 /////////////////////////////////////////////
                tch73_1 <= 1'd0;tch73_0 <= 1'd0;tch74_1 <= 1'd0;tch74_0 <= 1'd0;tch75_1 <= 1'd0;tch75_0 <= 1'd0;tch76_1 <= 1'd0;tch76_0 <= 1'd0;
                tch77_1 <= 1'd0;tch77_0 <= 1'd0;tch78_1 <= 1'd0;tch78_0 <= 1'd0;tch79_1 <= 1'd0;tch79_0 <= 1'd0;tch80_1 <= 1'd0;tch80_0 <= 1'd0;//80
               end
            else
            begin                     
               if((read_waveform_arr_temp5[14+:2] == 2'b11) || (read_waveform_arr_temp5[14+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch73_1 <= 1'b1; tch73_0 <= 1'b1;end else begin tch73_1 <= 1'b0; tch73_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[14+:2] == 2'b01) begin tch73_1 <= 1'b1; tch73_0 <= 1'b0; end
               else begin tch73_1 <= 1'b0; tch73_0 <= 1'b0; end
               
               if((read_waveform_arr_temp5[12+:2] == 2'b11) || (read_waveform_arr_temp5[12+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch74_1 <= 1'b1; tch74_0 <= 1'b1;end else begin tch74_1 <= 1'b0; tch74_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[12+:2] == 2'b01) begin tch74_1 <= 1'b1; tch74_0 <= 1'b0; end
               else begin tch74_1 <= 1'b0; tch74_0 <= 1'b0; end
               
               if((read_waveform_arr_temp5[10+:2] == 2'b11) || (read_waveform_arr_temp5[10+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch75_1 <= 1'b1; tch75_0 <= 1'b1;end else begin tch75_1 <= 1'b0; tch75_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[10+:2] == 2'b01) begin tch75_1 <= 1'b1; tch75_0 <= 1'b0; end
               else begin tch75_1 <= 1'b0; tch75_0 <= 1'b0; end
               
               if((read_waveform_arr_temp5[8+:2] == 2'b11) || (read_waveform_arr_temp5[8+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch76_1 <= 1'b1; tch76_0 <= 1'b1;end else begin tch76_1 <= 1'b0; tch76_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[8+:2] == 2'b01) begin tch76_1 <= 1'b1; tch76_0 <= 1'b0; end
               else begin tch76_1 <= 1'b0; tch76_0 <= 1'b0; end
               
               if((read_waveform_arr_temp5[6+:2] == 2'b11) || (read_waveform_arr_temp5[6+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch77_1 <= 1'b1; tch77_0 <= 1'b1;end else begin tch77_1 <= 1'b0; tch77_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[6+:2] == 2'b01) begin tch77_1 <= 1'b1; tch77_0 <= 1'b0; end
               else begin tch77_1 <= 1'b0; tch77_0 <= 1'b0; end
               
               if((read_waveform_arr_temp5[4+:2] == 2'b11) || (read_waveform_arr_temp5[4+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch78_1 <= 1'b1; tch78_0 <= 1'b1;end else begin tch78_1 <= 1'b0; tch78_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[4+:2] == 2'b01) begin tch78_1 <= 1'b1; tch78_0 <= 1'b0; end
               else begin tch78_1 <= 1'b0; tch78_0 <= 1'b0; end
               
               if((read_waveform_arr_temp5[2+:2] == 2'b11) || (read_waveform_arr_temp5[2+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch79_1 <= 1'b1; tch79_0 <= 1'b1;end else begin tch79_1 <= 1'b0; tch79_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[2+:2] == 2'b01) begin tch79_1 <= 1'b1; tch79_0 <= 1'b0; end
               else begin tch79_1 <= 1'b0; tch79_0 <= 1'b0; end
               
               if((read_waveform_arr_temp5[0+:2] == 2'b11) || (read_waveform_arr_temp5[0+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch80_1 <= 1'b1; tch80_0 <= 1'b1;end else begin tch80_1 <= 1'b0; tch80_0 <= 1'b0; end end
               else if(read_waveform_arr_temp5[0+:2] == 2'b01) begin tch80_1 <= 1'b1; tch80_0 <= 1'b0; end
               else begin tch80_1 <= 1'b0; tch80_0 <= 1'b0; end
            
            end
            end
            
            always @ (posedge M_AXI_ACLK)//引脚驱动////////////////////////////////////////////////////////////////////////////////// read_waveform_arr_temp6   tch81-88                                                                            
	      begin 
	        if((M_AXI_ARESETN == 1'b0)||(Generate_arr_waveform == 1'b0) || (PIN_GEN_FLAG == 1'b0))//如果系统复位，复位所有值	
              begin
                 /////////////////////////////////////////////
                tch81_1 <= 1'd0;tch81_0 <= 1'd0;tch82_1 <= 1'd0;tch82_0 <= 1'd0;tch83_1 <= 1'd0;tch83_0 <= 1'd0;tch84_1 <= 1'd0;tch84_0 <= 1'd0;
                tch85_1 <= 1'd0;tch85_0 <= 1'd0;tch86_1 <= 1'd0;tch86_0 <= 1'd0;tch87_1 <= 1'd0;tch87_0 <= 1'd0;tch88_1 <= 1'd0;tch88_0 <= 1'd0;
              end
            else
            begin 
               if((read_waveform_arr_temp6[30+:2] == 2'b11) || (read_waveform_arr_temp6[30+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch81_1 <= 1'b1; tch81_0 <= 1'b1;end else begin tch81_1 <= 1'b0; tch81_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[30+:2] == 2'b01) begin tch81_1 <= 1'b1; tch81_0 <= 1'b0; end
               else begin tch81_1 <= 1'b0; tch81_0 <= 1'b0; end
               
               if((read_waveform_arr_temp6[28+:2] == 2'b11) || (read_waveform_arr_temp6[28+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch82_1 <= 1'b1; tch82_0 <= 1'b1;end else begin tch82_1 <= 1'b0; tch82_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[28+:2] == 2'b01) begin tch82_1 <= 1'b1; tch82_0 <= 1'b0; end
               else begin tch82_1 <= 1'b0; tch82_0 <= 1'b0; end
               
               if((read_waveform_arr_temp6[26+:2] == 2'b11) || (read_waveform_arr_temp6[26+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch83_1 <= 1'b1; tch83_0 <= 1'b1;end else begin tch83_1 <= 1'b0; tch83_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[26+:2] == 2'b01) begin tch83_1 <= 1'b1; tch83_0 <= 1'b0; end
               else begin tch83_1 <= 1'b0; tch83_0 <= 1'b0; end
               
               if((read_waveform_arr_temp6[24+:2] == 2'b11) || (read_waveform_arr_temp6[24+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch84_1 <= 1'b1; tch84_0 <= 1'b1;end else begin tch84_1 <= 1'b0; tch84_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[24+:2] == 2'b01) begin tch84_1 <= 1'b1; tch84_0 <= 1'b0; end
               else begin tch84_1 <= 1'b0; tch84_0 <= 1'b0; end
               
               if((read_waveform_arr_temp6[22+:2] == 2'b11) || (read_waveform_arr_temp6[22+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch85_1 <= 1'b1; tch85_0 <= 1'b1;end else begin tch85_1 <= 1'b0; tch85_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[22+:2] == 2'b01) begin tch85_1 <= 1'b1; tch85_0 <= 1'b0; end
               else begin tch85_1 <= 1'b0; tch85_0 <= 1'b0; end
               
               if((read_waveform_arr_temp6[20+:2] == 2'b11) || (read_waveform_arr_temp6[20+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch86_1 <= 1'b1; tch86_0 <= 1'b1;end else begin tch86_1 <= 1'b0; tch86_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[20+:2] == 2'b01) begin tch86_1 <= 1'b1; tch86_0 <= 1'b0; end
               else begin tch86_1 <= 1'b0; tch86_0 <= 1'b0; end
               
               if((read_waveform_arr_temp6[18+:2] == 2'b11) || (read_waveform_arr_temp6[18+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch87_1 <= 1'b1; tch87_0 <= 1'b1;end else begin tch87_1 <= 1'b0; tch87_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[18+:2] == 2'b01) begin tch87_1 <= 1'b1; tch87_0 <= 1'b0; end
               else begin tch87_1 <= 1'b0; tch87_0 <= 1'b0; end
               
               if((read_waveform_arr_temp6[16+:2] == 2'b11) || (read_waveform_arr_temp6[16+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch88_1 <= 1'b1; tch88_0 <= 1'b1;end else begin tch88_1 <= 1'b0; tch88_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[16+:2] == 2'b01) begin tch88_1 <= 1'b1; tch88_0 <= 1'b0; end
               else begin tch88_1 <= 1'b0; tch88_0 <= 1'b0; end
            end
            end
          
                      always @ (posedge M_AXI_ACLK)//引脚驱动//////////////////////////////////////////////////////////////////////////////////read_waveform_arr_temp6   tch89-96                                                                           
	      begin 
	        if((M_AXI_ARESETN == 1'b0)||(Generate_arr_waveform == 1'b0) || (PIN_GEN_FLAG == 1'b0))//如果系统复位，复位所有值	
              begin
                 /////////////////////////////////////////////
                tch89_1 <= 1'd0;tch89_0 <= 1'd0;tch90_1 <= 1'd0;tch90_0 <= 1'd0;tch91_1 <= 1'd0;tch91_0 <= 1'd0;tch92_1 <= 1'd0;tch92_0 <= 1'd0;
                tch93_1 <= 1'd0;tch93_0 <= 1'd0;tch94_1 <= 1'd0;tch94_0 <= 1'd0;tch95_1 <= 1'd0;tch95_0 <= 1'd0;tch96_1 <= 1'd0;tch96_0 <= 1'd0;
              end
            else
            begin              
               if((read_waveform_arr_temp6[14+:2] == 2'b11) || (read_waveform_arr_temp6[14+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch89_1 <= 1'b1; tch89_0 <= 1'b1;end else begin tch89_1 <= 1'b0; tch89_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[14+:2] == 2'b01) begin tch89_1 <= 1'b1; tch89_0 <= 1'b0; end
               else begin tch89_1 <= 1'b0; tch89_0 <= 1'b0; end
               
               if((read_waveform_arr_temp6[12+:2] == 2'b11) || (read_waveform_arr_temp6[12+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch90_1 <= 1'b1; tch90_0 <= 1'b1;end else begin tch90_1 <= 1'b0; tch90_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[12+:2] == 2'b01) begin tch90_1 <= 1'b1; tch90_0 <= 1'b0; end
               else begin tch90_1 <= 1'b0; tch90_0 <= 1'b0; end
               
               if((read_waveform_arr_temp6[10+:2] == 2'b11) || (read_waveform_arr_temp6[10+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch91_1 <= 1'b1; tch91_0 <= 1'b1;end else begin tch91_1 <= 1'b0; tch91_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[10+:2] == 2'b01) begin tch91_1 <= 1'b1; tch91_0 <= 1'b0; end
               else begin tch91_1 <= 1'b0; tch91_0 <= 1'b0; end
               
               if((read_waveform_arr_temp6[8+:2] == 2'b11) || (read_waveform_arr_temp6[8+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch92_1 <= 1'b1; tch92_0 <= 1'b1;end else begin tch92_1 <= 1'b0; tch92_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[8+:2] == 2'b01) begin tch92_1 <= 1'b1; tch92_0 <= 1'b0; end
               else begin tch92_1 <= 1'b0; tch92_0 <= 1'b0; end
               
               if((read_waveform_arr_temp6[6+:2] == 2'b11) || (read_waveform_arr_temp6[6+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch93_1 <= 1'b1; tch93_0 <= 1'b1;end else begin tch93_1 <= 1'b0; tch93_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[6+:2] == 2'b01) begin tch93_1 <= 1'b1; tch93_0 <= 1'b0; end
               else begin tch93_1 <= 1'b0; tch93_0 <= 1'b0; end
               
               
               if((read_waveform_arr_temp6[4+:2] == 2'b11) || (read_waveform_arr_temp6[4+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch94_1 <= 1'b1; tch94_0 <= 1'b1;end else begin tch94_1 <= 1'b0; tch94_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[4+:2] == 2'b01) begin tch94_1 <= 1'b1; tch94_0 <= 1'b0; end
               else begin tch94_1 <= 1'b0; tch94_0 <= 1'b0; end
               
               if((read_waveform_arr_temp6[2+:2] == 2'b11) || (read_waveform_arr_temp6[2+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch95_1 <= 1'b1; tch95_0 <= 1'b1;end else begin tch95_1 <= 1'b0; tch95_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[2+:2] == 2'b01) begin tch95_1 <= 1'b1; tch95_0 <= 1'b0; end
               else begin tch95_1 <= 1'b0; tch95_0 <= 1'b0; end
               
               if((read_waveform_arr_temp6[0+:2] == 2'b11) || (read_waveform_arr_temp6[0+:2] == 2'b10)) begin if(Generate_waveform_FRE_VAL > Generate_waveform_PERT)begin tch96_1 <= 1'b1; tch96_0 <= 1'b1;end else begin tch96_1 <= 1'b0; tch96_0 <= 1'b0; end end
               else if(read_waveform_arr_temp6[0+:2] == 2'b01) begin tch96_1 <= 1'b1; tch96_0 <= 1'b0; end
               else begin tch96_1 <= 1'b0; tch96_0 <= 1'b0; end
               
            end
            end
                      
            
	//--------------------
	//Write Address Channel
	//--------------------

	// The purpose of the write address channel is to request the address and 
	// command information for the entire transaction.  It is a single beat
	// of information.

	// The AXI4 Write address channel in this example will continue to initiate
	// write commands as fast as it is allowed by the slave/interconnect.
	// The address will be incremented on each accepted address transaction,
	// by burst_size_byte to point to the next address. 

	  always @(posedge M_AXI_ACLK)                                   
	  begin                                                                
	                                                                       
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                           
	      begin                                                            
	        axi_awvalid <= 1'b0;                                           
	      end                                                              
	    // If previously not valid , start next transaction                
	    else if (~axi_awvalid && start_single_burst_write)                 
	      begin                                                            
	        axi_awvalid <= 1'b1;                                           
	      end                                                              
	    /* Once asserted, VALIDs cannot be deasserted, so axi_awvalid      
	    must wait until transaction is accepted */                         
	    else if (M_AXI_AWREADY && axi_awvalid)                             
	      begin                                                            
	        axi_awvalid <= 1'b0;                                           
	      end                                                              
	    else                                                               
	      axi_awvalid <= axi_awvalid;                                      
	    end                                                                
	                                                                       
	                                                                       
	// Next address after AWREADY indicates previous address acceptance    
	/*
	  always @(posedge M_AXI_ACLK)                                         
	  begin                                                                
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                            
	      begin                                                            
	        axi_awaddr <= write_data_dev_addr;                                             
	      end                                                              
	    else if (M_AXI_AWREADY && axi_awvalid)                             
	      begin                                                            
	        axi_awaddr <= axi_awaddr + burst_size_bytes;                   
	      end                                                              
	    else                                                               
	      axi_awaddr <= axi_awaddr;                                        
	    end                                                                
     */

	//--------------------
	//Write Data Channel
	//--------------------

	//The write data will continually try to push write data across the interface.

	//The amount of data accepted will depend on the AXI slave and the AXI
	//Interconnect settings, such as if there are FIFOs enabled in interconnect.

	//Note that there is no explicit timing relationship to the write address channel.
	//The write channel has its own throttling flag, separate from the AW channel.

	//Synchronization between the channels must be determined by the user.

	//The simpliest but lowest performance would be to only issue one address write
	//and write data burst at a time.

	//In this example they are kept in sync by using the same address increment
	//and burst sizes. Then the AW and W channels have their transactions measured
	//with threshold counters as part of the user logic, to make sure neither 
	//channel gets too far ahead of each other.

	//Forward movement occurs when the write channel is valid and ready

	  assign wnext = M_AXI_WREADY & axi_wvalid;                                   
	                                                                                    
	// WVALID logic, similar to the axi_awvalid always block above                      
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                        
	      begin                                                                         
	        axi_wvalid <= 1'b0;                                                         
	      end                                                                           
	    // If previously not valid, start next transaction                              
	    else if (~axi_wvalid && start_single_burst_write)                               
	      begin                                                                         
	        axi_wvalid <= 1'b1;                                                         
	      end                                                                           
	    /* If WREADY and too many writes, throttle WVALID                               
	    Once asserted, VALIDs cannot be deasserted, so WVALID                           
	    must wait until burst is complete with WLAST */                                 
	    else if (wnext && axi_wlast)                                                    
	      axi_wvalid <= 1'b0;                                                           
	    else                                                                            
	      axi_wvalid <= axi_wvalid;                                                     
	  end                                                                               
	                                                                                    
	                                                                                    
	//WLAST generation on the MSB of a counter underflow                                
	// WVALID logic, similar to the axi_awvalid always block above                      
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                        
	      begin                                                                         
	        axi_wlast <= 1'b0;                                                          
	      end                                                                           
	    // axi_wlast is asserted when the write index                                   
	    // count reaches the penultimate count to synchronize                           
	    // with the last write data when write_index is b1111                           
	    // else if (&(write_index[C_TRANSACTIONS_NUM-1:1])&& ~write_index[0] && wnext)  
	    else if (((write_index == C_M_AXI_BURST_LEN_VAL-2 && C_M_AXI_BURST_LEN_VAL >= 2) && wnext) || (C_M_AXI_BURST_LEN_VAL == 1 ))
	      begin                                                                         
	        axi_wlast <= 1'b1;                                                          
	      end                                                                           
	    // Deassrt axi_wlast when the last write data has been                          
	    // accepted by the slave with a valid response                                  
	    else if (wnext)                                                                 
	      axi_wlast <= 1'b0;                                                            
	    else if (axi_wlast && C_M_AXI_BURST_LEN_VAL == 1)                                   
	      axi_wlast <= 1'b0;                                                            
	    else                                                                            
	      axi_wlast <= axi_wlast;                                                       
	  end                                                                               
	                                                                                    
	                                                                                    
	/* Burst length counter. Uses extra counter register bit to indicate terminal       
	 count to reduce decode logic */                                                    
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 || start_single_burst_write == 1'b1)    
	      begin                                                                         
	        write_index <= 0;                                                           
	      end                                                                           
	    else if (wnext && (read_data_count < read_data_value))                         
	      begin                                                                         
	        write_index <= write_index + 1;                                             
	      end                                                                           
	    else                                                                            
	      write_index <= write_index;                                                   
	  end                                                                               
	                                                                                    
	                                                                                    
	/* Write Data Generator                                                             
	 Data pattern is only a simple incrementing count from 0 for each burst  */         
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                         
	      axi_wdata <= 'b1;                                                             
	    //else if (wnext && axi_wlast)                                                  
	    //  axi_wdata <= 'b0;                                                           
	    else if (wnext)                                                                 
	      axi_wdata <= axi_wdata + 1;                                                   
	    else                                                                            
	      axi_wdata <= axi_wdata;                                                       
	    end   
		
	 //write data count
	   always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                         
	      write_data_count <= 'b1;                                                                                                                       
	    else if (wnext)                                                                 
	      write_data_count <= write_data_count + 1;                                                   
	    else                                                                            
	      write_data_count <= write_data_count;                                                       
	    end  


	//----------------------------
	//Write Response (B) Channel
	//----------------------------

	//The write response channel provides feedback that the write has committed
	//to memory. BREADY will occur when all of the data and the write address
	//has arrived and been accepted by the slave.

	//The write issuance (number of outstanding write addresses) is started by 
	//the Address Write transfer, and is completed by a BREADY/BRESP.

	//While negating BREADY will eventually throttle the AWREADY signal, 
	//it is best not to throttle the whole data channel this way.

	//The BRESP bit [1] is used indicate any errors from the interconnect or
	//slave for the entire write burst. This example will capture the error 
	//into the ERROR output. 

	  always @(posedge M_AXI_ACLK)                                     
	  begin                                                                 
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                            
	      begin                                                             
	        axi_bready <= 1'b0;                                             
	      end                                                               
	    // accept/acknowledge bresp with axi_bready by the master           
	    // when M_AXI_BVALID is asserted by slave                           
	    else if (M_AXI_BVALID && ~axi_bready)                               
	      begin                                                             
	        axi_bready <= 1'b1;                                             
	      end                                                               
	    // deassert after one clock cycle                                   
	    else if (axi_bready)                                                
	      begin                                                             
	        axi_bready <= 1'b0;                                             
	      end                                                               
	    // retain the previous value                                        
	    else                                                                
	      axi_bready <= axi_bready;                                         
	  end                                                                   
	                                                                        
	                                                                        
	//Flag any write response errors                                        
	  assign write_resp_error = axi_bready & M_AXI_BVALID & M_AXI_BRESP[1]; 


	//----------------------------
	//Read Address Channel
	//----------------------------

	//The Read Address Channel (AW) provides a similar function to the
	//Write Address channel- to provide the tranfer qualifiers for the burst.

	//In this example, the read address increments in the same
	//manner as the write address channel.

	  always @(posedge M_AXI_ACLK)                                 
	  begin                                                              
	                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                         
	      begin                                                          
	        axi_arvalid <= 1'b0;                                         
	      end                                                            
	    // If previously not valid , start next transaction              
	    else if (~axi_arvalid && start_single_burst_read)                
	      begin                                                          
	        axi_arvalid <= 1'b1;                                         
	      end                                                            
	    else if (M_AXI_ARREADY && axi_arvalid)                           
	      begin                                                          
	        axi_arvalid <= 1'b0;                                         
	      end                                                            
	    else                                                             
	      axi_arvalid <= axi_arvalid;                                    
	  end                                                                
	                                                                     
	                                                                     
	// Next address after ARREADY indicates previous address acceptance  
	  always @(posedge M_AXI_ACLK)                                       
	  begin                                                              
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                          
	      begin                                                          
	        //axi_araddr <= read_data_dev_addr;
	        axi_araddr <= 0;                                           
	      end                                                            
	    else if (M_AXI_ARREADY && axi_arvalid)                           
	      begin                                                          
	        axi_araddr <= axi_araddr + burst_size_bytes;                 
	      end                                                            
	    else                                                             
	      axi_araddr <= axi_araddr;                                      
	  end                                                                


	//--------------------------------
	//Read Data (and Response) Channel
	//--------------------------------

	 // Forward movement occurs when the channel is valid and ready   
	  assign rnext = M_AXI_RVALID && axi_rready;                            
	                                                                        
	                                                                        
	// Burst length counter. Uses extra counter register bit to indicate    
	// terminal count to reduce decode logic                                
	  always @(posedge M_AXI_ACLK)                                          
	  begin                                                                 
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 || start_single_burst_read)                  
	      begin                                                             
	        read_index <= 0;                                                
	      end    
        //else if (rnext && (read_index != C_M_AXI_BURST_LEN_VAL-1)) 		  
	    else if (rnext && (read_data_count < read_data_value))              
	      begin                                                             
	        read_index <= read_index + 1;                                   
	      end                                                               
	    else                                                                
	      read_index <= read_index;                                         
	  end                                                                   
	                                                                        
	                                                                        
	/*                                                                      
	 The Read Data channel returns the results of the read request          
	                                                                        
	 In this example the data checker is always able to accept              
	 more data, so no need to throttle the RREADY signal                    
	 */                                                                     
	  always @(posedge M_AXI_ACLK)                                          
	  begin                                                                 
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                  
	      begin                                                             
	        axi_rready <= 1'b0;                                             
	      end                                                               
	    // accept/acknowledge rdata/rresp with axi_rready by the master     
	    // when M_AXI_RVALID is asserted by slave                           
	    else if (M_AXI_RVALID)                       
	      begin                                      
	         if (M_AXI_RLAST && axi_rready)          
	          begin                                  
	            axi_rready <= 1'b0;                  
	          end                                    
	         else                                    
	           begin                                 
	             axi_rready <= 1'b1;                 
	           end                                   
	      end                                        
	    // retain the previous value                 
	  end                                            
	                                                                        
	   //read data count                      
	  always @(posedge M_AXI_ACLK)                                          
	  begin                                                                 
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                   
	      begin                                                             
	        read_data_count <= 1'b0;                                          
	      end                                                               
	    //Only check data when RVALID is active                             
	    else if (rnext)                  
	      begin                                                             
	        read_data_count <= read_data_count + 1;                                          
	      end                                                               
	    else                                                                
	        read_data_count <= read_data_count;                                            
	  end  
	 
	  
	  //read config data 
	  always @(posedge M_AXI_ACLK)                                          
	  begin                                                                 
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                   
	      begin                                                             
	        read_con_buff_num <= 1'b0;                                          
	      end                                                               
	    //Only check data when RVALID is active                             
	    else if (rnext)              
	      begin       
            
	         read_con_buff0[read_con_buff_num] <= M_AXI_RDATA;   
            if(read_arr_CH == 8'd1)
            read_con_buff1[read_con_buff_num] <= M_AXI_RDATA;
            if(read_arr_CH == 8'd2)
            read_con_buff2[read_con_buff_num] <= M_AXI_RDATA; 
                
	        read_con_buff_num <= read_con_buff_num + 1;                                          
	      end                                                               
	    else                                                                
	        read_con_buff_num <= read_con_buff_num;                                            
	  end  
	  

	  
	  
	  
	  
	  

     /*
	 	//Check received read data against data generator                       
	  always @(posedge M_AXI_ACLK)                                          
	  begin                                                                 
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                   
	      begin                                                             
	        read_mismatch <= 1'b0;                                          
	      end                                                               
	    //Only check data when RVALID is active                             
	    else if (rnext && (M_AXI_RDATA != expected_rdata))                  
	      begin                                                             
	        read_mismatch <= 1'b1;                                          
	      end                                                               
	    else                                                                
	      read_mismatch <= 1'b0;                                            
	  end   
     */
                                                                  
	//Flag any read response errors                                         
	  assign read_resp_error = axi_rready & M_AXI_RVALID & M_AXI_RRESP[1];  


	//----------------------------------------
	//Example design read check data generator
	//-----------------------------------------

	//Generate expected read data to check against actual read data

	  always @(posedge M_AXI_ACLK)                     
	  begin                                                  
		if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)// || M_AXI_RLAST)             
			expected_rdata <= 'b1;                            
		else if (M_AXI_RVALID && axi_rready)                  
			expected_rdata <= expected_rdata + 1;             
		else                                                  
			expected_rdata <= expected_rdata;                 
	  end                                                    


	//----------------------------------
	//Example design error register
	//----------------------------------

	//Register and hold any data mismatches, or read/write interface errors 

	  always @(posedge M_AXI_ACLK)                                 
	  begin                                                              
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                          
	      begin                                                          
	        error_reg <= 1'b0;                                           
	      end                                                            
	    else if (read_mismatch || write_resp_error || read_resp_error)   
	      begin                                                          
	        error_reg <= 1'b1;                                           
	      end                                                            
	    else                                                             
	      error_reg <= error_reg;                                        
	  end                                                                


	//--------------------------------
	//Example design throttling
	//--------------------------------

	// For maximum port throughput, this user example code will try to allow
	// each channel to run as independently and as quickly as possible.

	// However, there are times when the flow of data needs to be throtted by
	// the user application. This example application requires that data is
	// not read before it is written and that the write channels do not
	// advance beyond an arbitrary threshold (say to prevent an 
	// overrun of the current read address by the write address).

	// From AXI4 Specification, 13.13.1: "If a master requires ordering between 
	// read and write transactions, it must ensure that a response is received 
	// for the previous transaction before issuing the next transaction."

	// This example accomplishes this user application throttling through:
	// -Reads wait for writes to fully complete
	// -Address writes wait when not read + issued transaction counts pass 
	// a parameterized threshold
	// -Writes wait when a not read + active data burst count pass 
	// a parameterized threshold

	 // write_burst_counter counter keeps track with the number of burst transaction initiated            
	 // against the number of burst transactions the master needs to initiate          

  /*	 
	  always @(posedge M_AXI_ACLK)                                                                              
	  begin                                                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1 )                                                                                 
	      begin                                                                                                 
	        write_burst_counter <= 'b0;                                                                         
	      end                                                                                                   
	    else if (M_AXI_AWREADY && axi_awvalid)                                                                  
	      begin                                                                                                 
	        if (write_burst_counter[C_NO_BURSTS_REQ] == 1'b0)                                                   
	          begin                                                                                             
	            write_burst_counter <= write_burst_counter + 1'b1;                                              
	            //write_burst_counter[C_NO_BURSTS_REQ] <= 1'b1;                                                 
	          end                                                                                               
	      end                                                                                                   
	    else                                                                                                    
	      write_burst_counter <= write_burst_counter;                                                           
	  end                                                                                                       
	         
			 
	 // read_burst_counter counter keeps track with the number of burst transaction initiated                   
	 // against the number of burst transactions the master needs to initiate                                   
	  always @(posedge M_AXI_ACLK)                                                                              
	  begin                                                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
	      begin                                                                                                 
	        read_burst_counter <= 'b0;                                                                          
	      end                                                                                                   
	    else if (M_AXI_ARREADY && axi_arvalid)                                                                  
	      begin                                                                                                 
	        if (read_burst_counter[C_NO_BURSTS_REQ] == 1'b0)                                                    
	          begin                                                                                             
	            read_burst_counter <= read_burst_counter + 1'b1;                                                
	            //read_burst_counter[C_NO_BURSTS_REQ] <= 1'b1;                                                  
	          end                                                                                               
	      end                                                                                                   
	    else                                                                                                    
	      read_burst_counter <= read_burst_counter;                                                             
	  end                                                                                                       
	   */                                                                                                         
	                                                                                                            
	  //implement master command interface state machine                                                        
	                                                                                                            
	  always @ ( posedge M_AXI_ACLK)                                                                            
	  begin                                                                                                     
	    if ((M_AXI_ARESETN == 1'b0 )||(init_txn_pulse == 1'b1))                                                                             
	      begin                                                                                                 
	        // reset condition                                                                                  
	        // All the signals are assigned default values under reset condition                                
	        mst_exec_state      <= mst_exec_state_init1 + mst_exec_state_init2;                                                                
	        start_single_burst_write <= 1'b0;                                                                   
	        start_single_burst_read  <= 1'b0;                                                                   
	        compare_done      <= 1'b0;                                                                          
	      end                                                                                                   
	    else                                                                                                    
	      begin                                                                                                     
	        // state transition                                                                                 
	        case (mst_exec_state)                                                                               
	                                                                                                            
	          IDLE:                                                                                     
	            // This state is responsible to wait for user defined C_M_START_COUNT                           
	            // number of clock cycles.                                                                      
	            if ( init_txn_pulse == 1'b1)                                                      
	              begin                                                                                         
	                mst_exec_state  <= IDLE;                                                              
	                //ERROR <= 1'b0;
	                compare_done <= 1'b0;
	              end                                                                                           
	            else                                                                                            
	              begin                                                                                         
	                mst_exec_state  <= IDLE;                                                            
	              end                                                                                           
	                                                                                                            
	          INIT_WRITE:                                                                                       
	            // This state is responsible to issue start_single_write pulse to                               
	            // initiate a write transaction. Write transactions will be                                     
	            // issued until burst_write_active signal is asserted.                                          
	            // write controller                                                                             
	            if (writes_done)                                                                                
	              begin                                                                                         
	                mst_exec_state <= IDLE;//                                                              
	              end                                                                                           
	            else                                                                                            
	              begin                                                                                         
	                mst_exec_state  <= INIT_WRITE;                                                              
	                                                                                                            
	                if (~axi_awvalid && ~start_single_burst_write && ~burst_write_active)                       
	                  begin                                                                                     
	                    start_single_burst_write <= 1'b1;                                                       
	                  end                                                                                       
	                else                                                                                        
	                  begin                                                                                     
	                    start_single_burst_write <= 1'b0; //Negate to generate a pulse                          
	                  end                                                                                       
	              end                                                                                           
	                                                                                                            
	          INIT_READ:                                                                                        
	            // This state is responsible to issue start_single_read pulse to                                
	            // initiate a read transaction. Read transactions will be                                       
	            // issued until burst_read_active signal is asserted.                                           
	            // read controller                                                                              
	            if (reads_done)                                                                                 
	              begin                                                                                         
	                mst_exec_state <= IDLE;                                                          
	              end                                                                                           
	            else                                                                                            
	              begin                                                                                         
	                mst_exec_state  <= INIT_READ;                                                            
	                                                                                                            
	                if (~axi_arvalid && ~burst_read_active && ~start_single_burst_read)                         
	                  begin                                                                                     
	                    start_single_burst_read <= 1'b1;                                                        
	                  end                                                                                       
	               else                                                                                         
	                 begin                                                                                      
	                   start_single_burst_read <= 1'b0; //Negate to generate a pulse                            
	                 end                                                                                        
	              end                                                                                           
	                                                                                                            
	          INIT_COMPARE:                                                                                     
	            // This state is responsible to issue the state of comparison                                   
	            // of written data with the read data. If no error flags are set,                               
	            // compare_done signal will be asseted to indicate success.                                     
	            //if (~error_reg)                                                                               
	            begin                                                                                           
	              //ERROR <= error_reg;
	              mst_exec_state <= IDLE;                                                               
	              compare_done <= 1'b1;                                                                         
	            end                                                                                             
	          default :                                                                                         
	            begin                                                                                           
	              mst_exec_state  <= IDLE;                                                              
	            end                                                                                             
	        endcase                                                                                             
	      end                                                                                                   
	  end //MASTER_EXECUTION_PROC                                                                               
	                                                                                                            
	                                                                                                            
	  // burst_write_active signal is asserted when there is a burst write transaction                          
	  // is initiated by the assertion of start_single_burst_write. burst_write_active                          
	  // signal remains asserted until the burst write is accepted by the slave                                 
	  always @(posedge M_AXI_ACLK)                                                                              
	  begin                                                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
	      burst_write_active <= 1'b0;                                                                           
	                                                                                                            
	    //The burst_write_active is asserted when a write burst transaction is initiated                        
	    else if (start_single_burst_write)                                                                      
	      burst_write_active <= 1'b1;                                                                           
	    else if (M_AXI_BVALID && axi_bready)                                                                    
	      burst_write_active <= 0;                                                                              
	  end                                                                                                       
	                                                                                                            
	 // Check for last write completion.                                                                        
	                                                                                                            
	 // This logic is to qualify the last write count with the final write                                      
	 // response. This demonstrates how to confirm that a write has been                                        
	 // committed.                                                                                              
	                                                                                                            
	  always @(posedge M_AXI_ACLK)                                                                              
	  begin                                                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
	      writes_done <= 1'b0;                                                                                  
	                                                                                                            
	    //The writes_done should be associated with a bready response                                           
	    //else if (M_AXI_BVALID && axi_bready && (write_burst_counter == {(C_NO_BURSTS_REQ-1){1}}) && axi_wlast)
	    else if (M_AXI_BVALID && (write_data_count < write_data_value) && axi_bready)                          
	      writes_done <= 1'b1;                                                                                  
	    else                                                                                                    
	      writes_done <= writes_done;                                                                           
	    end                                                                                                     
	                                                                                                            
	  // burst_read_active signal is asserted when there is a burst write transaction                           
	  // is initiated by the assertion of start_single_burst_write. start_single_burst_read                     
	  // signal remains asserted until the burst read is accepted by the master                                 
	  always @(posedge M_AXI_ACLK)                                                                              
	  begin                                                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
	      burst_read_active <= 1'b0;                                                                            
	                                                                                                            
	    //The burst_write_active is asserted when a write burst transaction is initiated                        
	    else if (start_single_burst_read)                                                                       
	      burst_read_active <= 1'b1;                                                                            
	    else if (M_AXI_RVALID && axi_rready && M_AXI_RLAST)                                                     
	      burst_read_active <= 0;                                                                               
	    end                                                                                                     
	                                                                                                            
	                                                                                                            
	 // Check for last read completion.                                                                         
	                                                                                                            
	 // This logic is to qualify the last read count with the final read                                        
	 // response. This demonstrates how to confirm that a read has been                                         
	 // committed.                                                                                              
	                                                                                                            
	  always @(posedge M_AXI_ACLK)                                                                              
	  begin                                                                                                     
	    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)                                                                                 
	      reads_done <= 1'b0;                                                                                                                                                                                            
	    //The reads_done should be associated with a rready response                                            
	    //else if (M_AXI_BVALID && axi_bready && (write_burst_counter == {(C_NO_BURSTS_REQ-1){1}}) && axi_wlast)
	    //else if (M_AXI_RVALID && axi_rready && (read_index == C_M_AXI_BURST_LEN_VAL-1) && (read_burst_counter[C_NO_BURSTS_REQ]))
		else if (M_AXI_RVALID && axi_rready && (read_data_count >= read_data_value))
	      reads_done <= 1'b1;                                                                                   
	    else                                                                                                    
	      reads_done <= reads_done;                                                                             
	    end                                                                                                     

	// Add user logic here

	// User logic ends

	endmodule		
	
	
	
	
