# Maintained by: PJALM (help@pjalm.com) for: http://pjalm.com/repos/

# These patches are the registered property of PJALM.COM and can not be
# redistributed or modified without the written consent of PJALM.COM.
# Links to these patches are allowed. All material is protected under the DMCA.

# Last Updated  : 05/07/2016
# Patch Name    : GFX - Generic Discrete Graphics (AMD/nVidia)
# Patch Version : 1.0

# Warning : This patch is ment for Series 6/7 systems only, no guarantees of use on other systems.

# Desktop AMD/nVidia Graphics + HDMI Audio
# Credit to Toleda for the graphics and audio fixes

into device label PXS2 parent_label IOU1 remove_entry;
into device label IOU1 parent_label PCI0 set_label begin PXS2 end;

into scope label _SB.PCI0.IOU1 set_label begin _SB.PCI0.PXS2 end;
into scope label _SB.PCI0.IOU1 set_label begin _SB.PCI0.PXS2 end;
into scope label _SB.PCI0.IOU1.PXS2 set_label begin _SB.PCI0.PXS2.AMD0.GFX1 end;

into method label _L09 parent_label _GPE code_regex (Notify\s\(\\_SB\.PCI0\.)IOU1(,\s0x[0-9A-F]{2}\)) replace_matched begin %1PXS2%2 end;
into method label _L09 parent_label _GPE code_regex (Notify\s\(\\_SB\.PCI0\.)IOU1.PXS2(,\s(0x[0-9A-F]{2})\)) replace_matched begin %1PXS2.AMD0.GFX1%2 end;
into method label OL1X parent_label _GPE code_regex (Notify\s\(\\_SB\.PCI0\.)IOU1(,\sZero\)) replace_matched begin %1PXS2%2 end;
into method label _DSM parent_label GFX1 code_regex (If\s\(LEqual\s\(\^\^)IOU1\.PXS2(\.LNKV,\s0x[0-9A-F]{2}\)\)) replace_matched begin %1PXS2.AMD0.GFX1%2 end;
into method label _DSM parent_label IGPU code_regex (If\s\(LEqual\s\(\^\^)IOU1\.PXS2(\.LNKV,\s0x[0-9A-F]{2}\)\)) replace_matched begin %1PXS2.AMD0.GFX1%2 end;

# Insert device GFX1 (AMD/nVidia Graphics)
into device label GFX1 parent_label PXS2 remove_entry;
into device label PXS2 parent_label PCI0 insert begin
Device (AMD0)\n
{\n
    
  	Name (_ADR, One)\n
    Device (GFX1)\n
    {\n
     	Name (_ADR, Zero)\n	        
       	Method (_DSM, 4, NotSerialized)\n
	    {\n
       		Store (Package (0x0E) {\n
	        	"AAPL,slot-name", "Slot-1",\n
       			"name", "Display Controller",\n
	        	"@0,connector-type", Buffer(0x04) {0x00,0x08,0x00,0x00},\n
       			"@1,connector-type", Buffer(0x04) {0x00,0x08,0x00,0x00},\n
	        	"@2,connector-type", Buffer(0x04) {0x00,0x08,0x00,0x00},\n
       			"@3,connector-type", Buffer(0x04) {0x00,0x08,0x00,0x00},\n
	        	"hda-gfx", Buffer (0x0A) {"onboard-2"}\n
       		}, Local0)\n
	        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))\n
       		Return (Local0)\n
       	}\n
   }\n    
}
end;

# Insert device HDAU (AMD/nVidia HDMI Audio)
into device label HDAU parent_label AMD0 remove_entry;
into device label PXS2 parent_label PCI0 insert begin
Device (AMD0)\n
{\n
    Name (_ADR, One)\n
    Device (HDAU)\n
    {\n
    	Name (_ADR, One)\n
    	Method (_DSM, 4, NotSerialized)\n
    	{\n
		    Store (Package (0x02) {\n
	    		"hda-gfx", Buffer (0x0A) {"onboard-2"}\n
    		}, Local0)\n
		    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))\n
	    	Return (Local0)\n
    	}\n
	}\n
}
end;

# Change HDEF layout-id for Intel HD audio
into method label _DSM parent_label HDEF code_regex ("layout-id",\s*Buffer\s+\(0x04\)\s*\{\s*)0x[0-9A-F]{2},\s*0x[0-9A-F]{2},\s*0x[0-9A-F]{2},\s*0x[0-9A-F]{2} replace_matched begin %10x01,0x00,0x00,0x00 end;

