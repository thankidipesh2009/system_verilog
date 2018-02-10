class packet;

   bit [5:0] address;
   bit [9:0] data;

   function new();
     address = 'd10;
     data = 'd5;
   endfunction
endclass

class A;

  bit ctrl;
  packet pkt1;
  
endclass

initial begin
   A a1;
   A a2;
   a1 = new();
   a1.pkt1=new();
   a1.pkt1.ctrl = 1;
   a1.pkt1.address = 'd20;
   a1.pkt1.data = 'd10
   a2 = new a1;
   $display("%0d %0d %0d",a2.ctrl,a2.pkt1.address,a2.pkt1.data);
   a1.ctrl = 2;
   a1.pkt1.address = 'd30;
   a1.pkt1.data = 'd20;
   $display("%0d %0d %0d",a2.ctrl,a2.pkt1.address,a2.pkt1.data);
end
