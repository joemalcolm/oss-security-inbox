Received: (qmail 18325 invoked by uid 550); 8 Jul 2025 00:16:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13556 invoked from network); 8 Jul 2025 00:15:48 -0000
Date: Tue, 8 Jul 2025 02:15:45 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250708001545.GA10970@openwall.com>
References: <CAOJKFBBgP_ixci3K0=EdoXXk91=sLD-K5KYNDmYVVnKhYWeeRA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline
In-Reply-To: <CAOJKFBBgP_ixci3K0=EdoXXk91=sLD-K5KYNDmYVVnKhYWeeRA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Electric Charger Research

--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 07, 2025 at 12:38:50PM -0500, Brandon Perry wrote:
> Attached is a write-up of some research I've been doing since November last
> year. The research covers the digital protocols used from an electric
> vehicle -> charger (ISO-15118) and the protocols used to manage the charger
> from a central management system (OCPP). I also cover some of the equipment
> I've used to do the research.
> 
> tl;dr - Your vehicle charger port or EVSE charger cable is functionally a
> network interface utilizing powerline communication over the control pilot
> pin. Using a development kit for electric vehicle and charger research, I
> showed how SSH can be configured to listen on the charger cable
> accidentally, allowing a vehicle to initiate the network and authenticate
> to the SSH server over the charger cable.
> 
> I also demonstrate two separate issues affecting open source CSMS
> implementations, one a full denial of service, the other partial DoS.
> 
> You can also find this HTML file here: https://ocpp.us/howto.html
> 
> I hope this helps others. Thanks.

Thank you for your research, and for sharing it publicly.

Looks like the attached HTML file got stripped.  I've now adjusted the
list settings, and am re-attaching content of the above web page,
converted to plain text as well as the HTML original.  I also quote the
portion most relevant to this mailing list below:

> During my initial research, I was able to focus on two open source CSMS
> projects; StEVe and CitrineOS. I reported one issue each to these
> projects, detailed below.
> 
>  StEVe CSMS
> 
> The open source CSMS StEVe relies on Security Profile 0. The following
> message can be sent by any charger connected, with any idTag.
> 
> [2, "dddb2599-d678-4ff8-bf38-a230390a1200", "StartTransaction",
> {"connectorId": 42, "meterStart": 42, "idTag": "some id", "timestamp":
> "222222017-10-27T19:10:11Z"}]
> 
> Note the invalid timestamp. Once parsed by the StEVe CSMS, a database
> record is created which causes the Transactions page to crash, preventing
> any listing of current and past transaction in the system.
> 
>  CitrineOS
> 
> CitrineOS implements several security profiles. The following
> vulnerability was found and fixed in CitrineOS. An invalid
> BootNotification message would cause the CSMS to crash completely.
> 
> [2, "5e58c16f-32ee-4589-ae5d-2272e5beeb71", "BootNotification", {}]
> 
> Note the empty JSON with no keys or values for the invalid
> BootNotification message. Below is the stacktrace printed once the message
> is recieved and processed.
> 
>  2024-11-22 18:57:26 /usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:88
>  2024-11-22 18:57:26                     value: chargingStation.model,
>  2024-11-22 18:57:26                                            ^
>  2024-11-22 18:57:26
>  2024-11-22 18:57:26 TypeError: Cannot read properties of undefined (reading 'model')
>  2024-11-22 18:57:26     at DeviceModelService. (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:88:44)
>  2024-11-22 18:57:26     at Generator.next ()
>  2024-11-22 18:57:26     at /usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:11:71
>  2024-11-22 18:57:26     at new Promise ()
>  2024-11-22 18:57:26     at __awaiter (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:7:12)
>  2024-11-22 18:57:26     at DeviceModelService.updateDeviceModel (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:82:16)
>  2024-11-22 18:57:26     at ConfigurationModule. (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/module.js:136:38)
>  2024-11-22 18:57:26     at Generator.next ()
>  2024-11-22 18:57:26     at fulfilled (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/module.js:18:58)
>  2024-11-22 18:57:26     at process.processTicksAndRejections (node:internal/process/task_queues:95:5)
> 
> This bug caused the CitrineOS service to crash completely, resulting in a
> full denial of service.
> 
>   VolatileOCPP Project
> 
> A project I started when beginning this research was implementing some of
> the Open Charge Alliance OCPP compliance tests, mainly focused around
> security features. During this development, I also found an old OCPP
> fuzzer developed at a university in Germany several years ago. The code
> was technically broken and only targetted OCPP 1.6. Within the
> VolatileOCPP project is an updated fuzzer based on this code. You can find
> the full code project on GitHub at
> https://github.com/brandonprry/VolatileOCPP. Both of the issues noted
> above in StEVe and CitrineOS were found with this updated fuzzer.
> 
> In addition to the OCPP fuzzer, there are several Open Charge Alliance
> Compliancy tests written in a C# framework. These tests are written based
> directly on the official OCA Compliancy Test documentation. Not every OCA
> test is implemented, but most of the security related tests are. For
> instance, the framework implements the OCA checks for verifying the CSMS
> supports expiring or blocking EVCCIDs.
> 
> A nice by-product of the framework is easily spinning up a simulated
> charger to interface with a CSMS.
> 
>  string url = "ws://localhost:8180/steve/websocket/CentralSystemService/1";
>  string protocol = "ocpp1.6";
> 
>  List<Task> tasks = new List<Task>();
>  for (int i = 1; i< 11; i++)
>  {
>   Charger c = new Charger(url, protocol);
>   c.ConnectorID = i.ToString();
>   c.IDTag = "volatileocpp";
>   tasks.Add(Task.Run(c.Simulate));
>  }
> 
>  foreach (Task t in tasks)
>   t.Wait();
> 
> This is the simplest example of a simulated charger interfacing with the
> StEVe CSMS which implements Security Profile 0. However, every security
> profile should be supported and most profiles (0, 1, and 2) have been
> tested on real-world CSMS software.

Alexander

--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="howto.txt"

                Modern Electric Vehicle Infrastructure Security

   The charger port on modern electric vehicles is effectively a network
   interface. This has particular implications for the security of electric
   vehicles and the chargers that charge them. My current understanding of
   physical charger port security is that most charger ports can be
   physically pressed or even pryed open without setting off vehicle alarms.
   Digital communication between the charger and the electric car happens via
   powerline communication. If you've ever used the wall plugs that turn your
   house's copper wiring into ethernet, it's the same thing.

   There are also new protocols being standardized that allow charging
   infrastructure to be generically managed by charging station management
   software (CSMS). The Open Charge Point Protocol (OCPP) is an initiative to
   bring common management APIs to charging stations to enable quicker
   adoption.

   In this paper, we will discuss the protocols used from the car to the
   charger, as well as from the charger to the charging station management
   systems. Both legs of the charging infrastructure offer unique attack
   surfaces.

The Gear

   In order to build a device to perform the digital communication over the
   control pilot pin, there are several pieces of gear you can buy. Not all
   are required.

     * REDBEET PEV and REDBEET EVSE
     * Geppetto EV simulator
     * Pionix Belay Box
     * Pionix Yak + Yeti
     * Fluke FEV-100

   To get started evaluating electric vehicle charger ports as quickly as
   possible, either the full Pionix Belay Box or the simpler Yak + Yeti kits
   will get you going. The BelayBox contains both the Yak and Yeti kits
   pre-assembled and configured. Either solutions will give you a 32-amp
   Linux-based charger for testing and development. The EVerest open-source
   project will implement all the software you need to communicate using the
   hardware above.

The Car <-> Charger Protocol - ISO-15118 and V2x

   In order to begin networked communication between the charger and the car,
   a 5% duty cycle pulse width modulated signal is sent over the control
   pilot pin from the charger to the car. Once the car detects the 5% signal,
   it will begin protocol negotiation, starting with an Neighbour Discovery
   Protocol broadcast over IPv6. The address of both the charger and the car
   for IPv6 communication is determined via SLAAC (not be confused with SLAC,
   the method to find the nearest charge port).

   Currently, most Level 1 and 2 chargers perform no such communication. In
   general, this communication is only supported during DC charging as per
   vehicle charging specifications. In the future, AC charging will support
   this kind of digital communication, and adoption via Level 2 and 1
   chargers will increase.

   For ISO-15118 (Plug & Charge, Vehicle2Grid, V2House, V2x), EXI-encoded XML
   is used to transmit standardized data back and forth between the car and
   charger, such as EVCCID, EVSEID, State of Charge, and other information
   about the car/charger. You can find many PCAPs of this communication in
   this Github repository. This communication can be encrypted with TLS, but
   it's not required. Often, certificates used for car to charger
   communication are self-signed and not rooted in any common certificate
   authority.

   The EVerest project implements a C++ library for ISO-15118 communication.
   We can use this library to generate many EXI messages that can be used
   against opaque targets.

 #include <cbv2g/exi_v2gtp.h>
 #include <iso15118/message/schedule_exchange.hpp>
 #include <iso15118/message/variant.hpp>
 #include <iostream>
 #include <vector>
 #include <cstdlib>
 #include <iso15118/io/stream_view.hpp>

 uint8_t* readAllStdin(size_t& length) {

     std::vector<uint8_t> buffer;
     char temp;

     // Read all input data from stdin
     while (std::cin.get(temp)) {
         buffer.push_back(static_cast<uint8_t>(temp));
     }

     // Allocate memory for the buffer and copy the data
     length = buffer.size();
     uint8_t* data = new uint8_t[length];
     std::copy(buffer.begin(), buffer.end(), data);

     return data;
 }

 int main()
 {
     size_t len;
     uint8_t* data = readAllStdin(len);

     const iso15118::io::StreamInputView stream_view{data, len};
     iso15118::message_20::Variant variant(iso15118::io::v2gtp::PayloadType::Part20Main, stream_view);
 }

   There are several types of PayloadTypes you can use for different
   harnesses.

   enum class PayloadType : uint16_t {
       SAP = 0x8001,
       Part20Main = 0x8002,
       Part20AC = 0x8003,
       Part20DC = 0x8004,
   };


   You can compile the above fuzzing harness and generate weird EXI messages
   for further testing.

 afl-g++ iso15118.cpp -I ./libiso15118/build/_deps/libcbv2g-src/include/ \
   -I libiso15118/include/ \
   libiso15118/build/src/iso15118/libiso15118.a \
   ./libiso15118//build/_deps/libcbv2g-build/lib/cbv2g/libcbv2g_tp.a \
   libiso15118/build/_deps/libcbv2g-build/lib/cbv2g/libcbv2g_iso20.a \
   libiso15118/build/_deps/libcbv2g-build/lib/cbv2g/libcbv2g_exi_codec.a \
   -o test

   Most of the crashes I ran into were benign logic issues and not directly
   related to memory safety.

 bperry@bperry-Precision-T5610:~/tmp$ echo "QIRAAAlpAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAnACcnDk5MDk5OTk5OTk5OTk5OTA5OTkCADAAnQEAFQo=" | base64 --decode | valgrind ./test
 ==2570672== Memcheck, a memory error detector
 ==2570672== Copyright (C) 2002-2022, and GNU GPL'd, by Julian Seward et al.
 ==2570672== Using Valgrind-3.22.0 and LibVEX; rerun with -h for copyright info
 ==2570672== Command: ./test
 ==2570672==
 terminate called after throwing an instance of 'std::bad_optional_access'
   what():  bad optional access
 ==2570672==
 ==2570672== Process terminating with default action of signal 6 (SIGABRT)
 ==2570672==    at 0x4CA3B1C: __pthread_kill_implementation (pthread_kill.c:44)
 ==2570672==    by 0x4CA3B1C: __pthread_kill_internal (pthread_kill.c:78)
 ==2570672==    by 0x4CA3B1C: pthread_kill@@GLIBC_2.34 (pthread_kill.c:89)
 ==2570672==    by 0x4C4A26D: raise (raise.c:26)
 ==2570672==    by 0x4C2D8FE: abort (abort.c:79)
 ==2570672==    by 0x4915FF4: ??? (in /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.33)
 ==2570672==    by 0x492B0D9: ??? (in /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.33)
 ==2570672==    by 0x4915A54: std::terminate() (in /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.33)
 ==2570672==    by 0x492B390: __cxa_throw (in /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.33)
 ==2570672==    by 0x117BD1: __throw_bad_optional_access (optional:111)
 ==2570672==    by 0x117BD1: value (optional:1005)
 ==2570672==    by 0x117BD1: void iso15118::message_20::convert<iso20_ServiceSelectionReqType, iso15118::message_20::ServiceSelectionRequest>(iso20_ServiceSelectionReqType const&, iso15118::message_20::ServiceSelectionRequest&) [clone .cold] (service_selection.cpp:20)
 ==2570672==    by 0x145548: insert_type (variant_access.hpp:30)
 ==2570672==    by 0x145548: void iso15118::message_20::insert_type(iso15118::message_20::VariantAccess&, iso20_ServiceSelectionReqType const&) (service_selection.cpp:42)
 ==2570672==    by 0x123562: iso15118::message_20::handle_main(iso15118::message_20::VariantAccess&) (variant.cpp:58)
 ==2570672==    by 0x1249AF: iso15118::message_20::Variant::Variant(iso15118::io::v2gtp::PayloadType, iso15118::io::StreamInputView const&) (variant.cpp:123)
 ==2570672==    by 0x11C8D0: main (main.cpp:34)
 ==2570672==
 ==2570672== HEAP SUMMARY:
 ==2570672==     in use at exit: 78,084 bytes in 5 blocks
 ==2570672==   total heap usage: 14 allocs, 9 frees, 78,371 bytes allocated
 ==2570672==
 ==2570672== LEAK SUMMARY:
 ==2570672==    definitely lost: 0 bytes in 0 blocks
 ==2570672==    indirectly lost: 0 bytes in 0 blocks
 ==2570672==      possibly lost: 136 bytes in 1 blocks
 ==2570672==    still reachable: 77,948 bytes in 4 blocks
 ==2570672==         suppressed: 0 bytes in 0 blocks
 ==2570672== Rerun with --leak-check=full to see details of leaked memory
 ==2570672==
 ==2570672== For lists of detected and suppressed errors, rerun with: -s
 ==2570672== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 0 from 0)
 Aborted
 bperry@bperry-Precision-T5610:~/tmp$

   You may find similar crashes, and these are worth reporting upstream. But
   the real useful output are the EXI messages generated that exercise
   different codepaths. You can re-use these against any charger or car in
   the future to test their EXI decoding.

  The EVCCID

   The EVCCID is the value that is often used to identify the vehicle to the
   charger for automatic billing. This value is the MAC address of the
   interface being used for communication by the vehicle. You'll notice this
   in the PCAPs in repository linked above. If you were able to spoof your
   MAC address on the vehicle, you'd be able to abuse Plug & Charge. Some
   people propose a device that performs a man-in-the-middle, but this seems
   too complex and it should be doable from the vehicle itself.

   You can, but not always, identify a vehicle's maker by its MAC address
   prefix.

  Potential Vulnerabilities

   Consider you are a developer who is told the SSH port or some web
   management application should listen on both IPv6 and IPv4, so you set the
   default configuration for the service to run on 0.0.0.0:1337 and
   [::]:1337. It would be incredibly easy to accidentally configure any
   sensitive applications to listen over the charger port, on both the
   electric vehicle and the charger itself.

   Imagine bruteforcing the charger's SSH credentials over the charger cable
   because it was told to listen on all interfaces, not realizing the charger
   port is an interface sometimes. We can prove such an issue with the
   default BelayBox configuration.

  Getting Nmap on the BelayBox

   While Nmap is a little overkill for scanning a local interface, having
   Nmap on the BelayBox will also let you scan any V2X-enabled vehicles you
   connect to or charge with the BelayBox. These commands should be run on a
   regular x86/64 host and will cross-compile nmap for the BelayBox
   architecture.

   wget
   https://pionix-update.de/belaybox-basecamp-demo/stable/poky-glibc-x86_64-belaybox-image-cortexa7t2hf-neon-vfpv4-raspberrypi4-toolchain-4.0.16.sh

   Set up the toolchain. Then download the nmap source. Decompress the source
   code archive, and configure the project disabling features you won't need.
   Once configured, you can make the cross-compiled nmap binary.

   wget https://nmap.org/dist/nmap-7.94.tgz

   tar xzf nmap-7.94.tgz

   cd nmap-7.94

   source
   /opt/poky/4.0.16/environment-setup-cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi

   ./configure --host=arm-linux-gnueabihf --without-subversion
   --without-liblua --without-zenmap --with-pcre=/usr --with-libpcap=included
   --with-pcap=linux --with-libdnet=included --without-ndiff
   --without-nmap-update --without-ncat --without-liblua --without-nping
   --without-openssl

   make

   Now you have a version of nmap that can run on the BelayBox directly. You
   can transfer your built nmap binary and scan the local address. For the
   BelayBox charger development kit, eth1 is the powerline interface.

 root@belaybox-105c:/var/nmap/nmap-7.94# ifconfig
 [snip]
           eth1      Link encap:Ethernet  HWaddr CA:22:4B:95:E4:62
           inet6 addr: fe80::c822:4bff:fe95:e462/64 Scope:Link
           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
           RX packets:2 errors:0 dropped:0 overruns:0 frame:0
           TX packets:34 errors:0 dropped:0 overruns:0 carrier:0
           collisions:0 txqueuelen:100
           RX bytes:1113 (1.0 KiB)  TX bytes:6137 (5.9 KiB)
 [snip]

 root@belaybox-105c:/var/nmap/nmap-7.94# ./nmap -6 -Pn -p- fe80::c822:4bff:fe95:e462
 Starting Nmap 7.94 ( https://nmap.org ) at 2025-03-30 00:32 UTC
 Nmap scan report for fe80::c822:4bff:fe95:e462
 Host is up (0.000065s latency).
 Not shown: 65530 closed tcp ports (reset)
 PORT      STATE SERVICE
 22/tcp    open  ssh
 111/tcp   open  rpcbind
 5355/tcp  open  llmnr
 61341/tcp open  unknown
 64109/tcp open  unknown

 Nmap done: 1 IP address (1 host up) scanned in 5.12 seconds
 root@belaybox-105c:/var/nmap/nmap-7.94#

   Once you identify the device being used for powerline communication, you
   can scan it. The BelayBox has SSH listening on the charger port IPv6
   interface. A "vehicle" could connect, initiate the network, and attempt to
   authenticate to SSH over the charger cable. You may notice the IP address
   is a local link address, not something you would usually see outside of
   the host. However, this is the SLAAC auto-created IPv6 address, based on
   the MAC address of the interface.

 06:52:34.040620 dc:44:27:1d:cd:45 (oui Unknown) > 86:75:a6:8b:a3:c8 (oui Unknown), ethertype Unknown (0x88e1), length 85:
         0x0000:  017c 6000 0000 003e 0000 0000 0000 0000  .|`....>........
         0x0010:  0000 0000 0000 0000 0000 dc44 271d cd45  ...........D'..E
         0x0020:  0000 0000 0000 0000 0000 0000 0000 0000  ................
         0x0030:  0086 75a6 8ba3 c854 4553 4c41 2045 5600  ..u....TESLA.EV.
         0x0040:  0000 0000 0000 00                        .......
 06:52:34.040907 86:75:a6:8b:a3:c8 (oui Unknown) > dc:44:27:1d:cd:45 (oui Unknown), ethertype Unknown (0x88e1), length 109:
         0x0000:  017d 6000 0000 0056 0000 0000 0000 0000  .}`....V........
         0x0010:  0000 0000 0000 0000 0000 dc44 271d cd45  ...........D'..E
         0x0020:  0000 0000 0000 0000 0000 0000 0000 0000  ................
         0x0030:  0086 75a6 8ba3 c854 4553 4c41 2045 5600  ..u....TESLA.EV.
         0x0040:  0000 0000 0000 0034 2d5a e2e5 fa01 0045  .......4-Z.....E
         0x0050:  3133 5058 5035 3337 4253 4e44 4733 53    13PXP537BSNDG3S
 06:52:34.427329 IP6 fe80::de44:27ff:fe1d:cd45.49153 > ip6-allnodes.15118: UDP, length 10
 06:52:34.428268 IP6 fe80::a9e4:a250:1925:5326 > ff02::1:ff1d:cd45: ICMP6, neighbor solicitation, who has fe80::de44:27ff:fe1d:cd45, length 32
 06:52:34.438078 IP6 fe80::de44:27ff:fe1d:cd45 > fe80::a9e4:a250:1925:5326: ICMP6, neighbor advertisement, tgt is fe80::de44:27ff:fe1d:cd45, length 32
 06:52:34.438131 IP6 fe80::a9e4:a250:1925:5326.15118 > fe80::de44:27ff:fe1d:cd45.49153: UDP, length 28
 06:52:34.451904 IP6 fe80::de44:27ff:fe1d:cd45.49153 > fe80::a9e4:a250:1925:5326.61341: Flags [S], seq 6509, win 2920, options [mss 1440], length 0

   This is a snippet of a PCAP between a Tesla and charger. Note both of the
   addresses are a local link address (fe80::a9e4:a250:1925:5326.15118 and
   fe80::de44:27ff:fe1d:cd45.49153). Note the charger communication is
   happening over port 15118 over the IPv6 link local interface. You can
   imagine the interesting implications here.

   As a network admin looking at logs for failed authentication attempts, you
   would see a link local address attempting to bruteforce or authenticating
   to SSH. Very confusing. In the below output, you can see the two SSH
   authentications; one over the LAN port and one over the charger port.

 root@belaybox-105c:~# last
 root     pts/1        fe80::10e4:7eff: Sun Jun  1 17:25   still logged in
 root     pts/0        192.168.1.135    Sun Jun  1 17:22   still logged in

The Open Charge Point Protocol (OCPP)

   The Open Charge Point Protocol (OCPP) is used by charging station
   management systems (CSMS) to manage fleets of deployed chargers, even if
   it is a fleet of one in your garage. Chargers and the CSMS rely on web
   sockets to maintain communication. Most OCPP implementations meet the 1.6
   standard. The 2.1 version will be the most recent version, with "lite"
   implementations also on their way for resource-constrained environments.

   Today, we focus on expensive vehicles as the use-case for charging, but
   many people around the world are looking at how vehicles like tuk-tuks,
   motorbikes, and scooters can benefit from modern charging.

  The Charging Station Management System (CSMS)

   The CSMS allows owners of chargers to remotely maintain fleets of
   chargers. The most obvious use-case for this is a fleet of chargers
   maintained within a city, connecting to the CSMS via a SIM card or other
   wireless connection. The CSMS allows administrators to manage vehicle
   authentication, power usage, transactions, firmware updates, and much
   more.

  Charger -> CSMS Authentication

   There are 3 profiles of authentication supported by OCPP. Chargers can
   authenticate to the CSMS via the following security profiles.

     * Security Profile 1 - Plain Text HTTP with Basic Authentication
     * Security Profile 2 - Encrypted HTTP with Basic Authentication
     * Security Profile 3 - Encrypted HTTP with Client Certificate

   Sometimes you may see no basic authentication requirement called Security
   Profile 0. Most chargers today implement and rely on Security Profile 2.

  Potentional Vulnerabilities

   During my initial research, I was able to focus on two open source CSMS
   projects; StEVe and CitrineOS. I reported one issue each to these
   projects, detailed below.

    StEVe CSMS

   The open source CSMS StEVe relies on Security Profile 0. The following
   message can be sent by any charger connected, with any idTag.

   [2, "dddb2599-d678-4ff8-bf38-a230390a1200", "StartTransaction",
   {"connectorId": 42, "meterStart": 42, "idTag": "some id", "timestamp":
   "222222017-10-27T19:10:11Z"}]

   Note the invalid timestamp. Once parsed by the StEVe CSMS, a database
   record is created which causes the Transactions page to crash, preventing
   any listing of current and past transaction in the system.

    CitrineOS

   CitrineOS implements several security profiles. The following
   vulnerability was found and fixed in CitrineOS. An invalid
   BootNotification message would cause the CSMS to crash completely.

   [2, "5e58c16f-32ee-4589-ae5d-2272e5beeb71", "BootNotification", {}]

   Note the empty JSON with no keys or values for the invalid
   BootNotification message. Below is the stacktrace printed once the message
   is recieved and processed.

 2024-11-22 18:57:26 /usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:88
 2024-11-22 18:57:26                     value: chargingStation.model,
 2024-11-22 18:57:26                                            ^
 2024-11-22 18:57:26
 2024-11-22 18:57:26 TypeError: Cannot read properties of undefined (reading 'model')
 2024-11-22 18:57:26     at DeviceModelService. (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:88:44)
 2024-11-22 18:57:26     at Generator.next ()
 2024-11-22 18:57:26     at /usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:11:71
 2024-11-22 18:57:26     at new Promise ()
 2024-11-22 18:57:26     at __awaiter (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:7:12)
 2024-11-22 18:57:26     at DeviceModelService.updateDeviceModel (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:82:16)
 2024-11-22 18:57:26     at ConfigurationModule. (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/module.js:136:38)
 2024-11-22 18:57:26     at Generator.next ()
 2024-11-22 18:57:26     at fulfilled (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/module.js:18:58)
 2024-11-22 18:57:26     at process.processTicksAndRejections (node:internal/process/task_queues:95:5)

   This bug caused the CitrineOS service to crash completely, resulting in a
   full denial of service.

  VolatileOCPP Project

   A project I started when beginning this research was implementing some of
   the Open Charge Alliance OCPP compliance tests, mainly focused around
   security features. During this development, I also found an old OCPP
   fuzzer developed at a university in Germany several years ago. The code
   was technically broken and only targetted OCPP 1.6. Within the
   VolatileOCPP project is an updated fuzzer based on this code. You can find
   the full code project on GitHub at
   https://github.com/brandonprry/VolatileOCPP. Both of the issues noted
   above in StEVe and CitrineOS were found with this updated fuzzer.

   In addition to the OCPP fuzzer, there are several Open Charge Alliance
   Compliancy tests written in a C# framework. These tests are written based
   directly on the official OCA Compliancy Test documentation. Not every OCA
   test is implemented, but most of the security related tests are. For
   instance, the framework implements the OCA checks for verifying the CSMS
   supports expiring or blocking EVCCIDs.

   A nice by-product of the framework is easily spinning up a simulated
   charger to interface with a CSMS.

 string url = "ws://localhost:8180/steve/websocket/CentralSystemService/1";
 string protocol = "ocpp1.6";

 List<Task> tasks = new List<Task>();
 for (int i = 1; i< 11; i++)
 {
     Charger c = new Charger(url, protocol);
     c.ConnectorID = i.ToString();
     c.IDTag = "volatileocpp";
     tasks.Add(Task.Run(c.Simulate));
 }

 foreach (Task t in tasks)
     t.Wait();

   This is the simplest example of a simulated charger interfacing with the
   StEVe CSMS which implements Security Profile 0. However, every security
   profile should be supported and most profiles (0, 1, and 2) have been
   tested on real-world CSMS software.

References

   Visible links
   . https://github.com/EVerest/everest-core
   . https://www.w3.org/TR/exi/
   . https://github.com/EVerest/logfiles
   . https://github.com/EVerest/libiso15118

--EeQfGwPcQSOJBaQU
Content-Type: text/html; charset=us-ascii
Content-Disposition: attachment; filename="howto.html"

<html> 
	<body style="width:600px;margin-left:auto;margin-right:auto;"> 
		<h1>Modern Electric Vehicle Infrastructure Security</h1> 
		<p> 
      The charger port on modern electric vehicles is effectively a network interface. This has particular implications for the security of electric vehicles and the chargers that charge them. My current understanding of physical charger port security is that most charger ports can be physically pressed or even pryed open without setting off vehicle alarms. Digital communication between the charger and the electric car happens via powerline communication. If you've ever used the wall plugs that turn your house's copper wiring into ethernet, it's the same thing. 
      <br /><br/> 
      There are also new protocols being standardized that allow charging infrastructure to be generically managed by charging station management software (CSMS). The Open Charge Point Protocol (OCPP) is an initiative to bring common management APIs to charging stations to enable quicker adoption. 
      <br/><br/> 
      In this paper, we will discuss the protocols used from the car to the charger, as well as from the charger to the charging station management systems. Both legs of the charging infrastructure offer unique attack surfaces. 
		</p> 
		<h2>The Gear</h2> 
		<p> 
		In order to build a device to perform the digital communication over the control pilot pin, there are several pieces of gear you can buy. Not all are required. 
		<br /> 
		<ul> 
				<li>REDBEET PEV and REDBEET EVSE</li> 
				<li>Geppetto EV simulator</li> 
				<li>Pionix Belay Box</li> 
				<li>Pionix Yak + Yeti</li> 
				<li>Fluke FEV-100</li> 
			</ul> 
		To get started evaluating electric vehicle charger ports as quickly as possible, either the full Pionix Belay Box or the simpler Yak + Yeti kits will get you going. The BelayBox contains both the Yak and Yeti kits pre-assembled and configured. Either solutions will give you a 32-amp Linux-based charger for testing and development. The <a href="https://github.com/EVerest/everest-core">EVerest</a> open-source project will implement all the software you need to communicate using the hardware above. 
		</p> 
    <h2>The Car &lt;-&gt; Charger Protocol - ISO-15118 and V2x</h2> 
		<p> 
      In order to begin networked communication between the charger and the car, a 5% duty cycle pulse width modulated signal is sent over the control pilot pin from the charger to the car. Once the car detects the 5% signal, it will begin protocol negotiation, starting with an Neighbour Discovery Protocol broadcast over IPv6. The address of both the charger and the car for IPv6 communication is determined via SLAAC (not be confused with SLAC, the method to find the nearest charge port). 
      <br/><br/> 
      Currently, most Level 1 and 2 chargers perform no such communication. In general, this communication is only supported during DC charging as per vehicle charging specifications. In the future, AC charging will support this kind of digital communication, and adoption via Level 2 and 1 chargers will increase. 
		</p> 
		<p> 
      For ISO-15118 (Plug &amp; Charge, Vehicle2Grid, V2House, V2x), <a href='https://www.w3.org/TR/exi/'>EXI-encoded XML</a> is used to transmit standardized data back and forth between the car and charger, such as EVCCID, EVSEID, State of Charge, and other information about the car/charger. You can find many PCAPs of this communication in this <a href='https://github.com/EVerest/logfiles'>Github repository</a>. This communication can be encrypted with TLS, but it's not required. Often, certificates used for car to charger communication are self-signed and not rooted in any common certificate authority. 
      <br/><br/> 
      The EVerest project implements a <a href="https://github.com/EVerest/libiso15118">C++ library for ISO-15118 communication</a>. We can use this library to generate many EXI messages that can be used against opaque targets. 
      <pre> 
#include &lt;cbv2g/exi_v2gtp.h&gt; 
#include &lt;iso15118/message/schedule_exchange.hpp&gt; 
#include &lt;iso15118/message/variant.hpp&gt; 
#include &lt;iostream&gt; 
#include &lt;vector&gt; 
#include &lt;cstdlib&gt; 
#include &lt;iso15118/io/stream_view.hpp&gt; 
 
uint8_t* readAllStdin(size_t&amp; length) { 
 
    std::vector&lt;uint8_t&gt; buffer; 
    char temp; 
 
    // Read all input data from stdin 
    while (std::cin.get(temp)) { 
        buffer.push_back(static_cast&lt;uint8_t&gt;(temp)); 
    } 
 
    // Allocate memory for the buffer and copy the data 
    length = buffer.size(); 
    uint8_t* data = new uint8_t[length]; 
    std::copy(buffer.begin(), buffer.end(), data); 
 
    return data; 
} 
 
int main() 
{ 
    size_t len; 
    uint8_t* data = readAllStdin(len); 
 
    const iso15118::io::StreamInputView stream_view{data, len}; 
    iso15118::message_20::Variant variant(iso15118::io::v2gtp::PayloadType::Part20Main, stream_view); 
} 
</pre> 
      There are several types of PayloadTypes you can use for different harnesses. 
  
    <pre> 
  enum class PayloadType : uint16_t { 
      SAP = 0x8001, 
      Part20Main = 0x8002, 
      Part20AC = 0x8003, 
      Part20DC = 0x8004, 
  }; 
    </pre> 
 
  You can compile the above fuzzing harness  and generate weird EXI messages for further testing. 
  <pre> 
afl-g++ iso15118.cpp -I ./libiso15118/build/_deps/libcbv2g-src/include/ \ 
  -I libiso15118/include/ \ 
  libiso15118/build/src/iso15118/libiso15118.a \ 
  ./libiso15118//build/_deps/libcbv2g-build/lib/cbv2g/libcbv2g_tp.a \ 
  libiso15118/build/_deps/libcbv2g-build/lib/cbv2g/libcbv2g_iso20.a \ 
  libiso15118/build/_deps/libcbv2g-build/lib/cbv2g/libcbv2g_exi_codec.a \ 
  -o test 
</pre> 
 
  Most of the crashes I ran into were benign logic issues and not directly related to memory safety. 
 
  <pre> 
bperry@bperry-Precision-T5610:~/tmp$ echo "QIRAAAlpAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAnACcnDk5MDk5OTk5OTk5OTk5OTA5OTkCADAAnQEAFQo=" | base64 --decode | valgrind ./test 
==2570672== Memcheck, a memory error detector 
==2570672== Copyright (C) 2002-2022, and GNU GPL'd, by Julian Seward et al. 
==2570672== Using Valgrind-3.22.0 and LibVEX; rerun with -h for copyright info 
==2570672== Command: ./test 
==2570672==  
terminate called after throwing an instance of 'std::bad_optional_access' 
  what():  bad optional access 
==2570672==  
==2570672== Process terminating with default action of signal 6 (SIGABRT) 
==2570672==    at 0x4CA3B1C: __pthread_kill_implementation (pthread_kill.c:44) 
==2570672==    by 0x4CA3B1C: __pthread_kill_internal (pthread_kill.c:78) 
==2570672==    by 0x4CA3B1C: pthread_kill@@GLIBC_2.34 (pthread_kill.c:89) 
==2570672==    by 0x4C4A26D: raise (raise.c:26) 
==2570672==    by 0x4C2D8FE: abort (abort.c:79) 
==2570672==    by 0x4915FF4: ??? (in /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.33) 
==2570672==    by 0x492B0D9: ??? (in /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.33) 
==2570672==    by 0x4915A54: std::terminate() (in /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.33) 
==2570672==    by 0x492B390: __cxa_throw (in /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.33) 
==2570672==    by 0x117BD1: __throw_bad_optional_access (optional:111) 
==2570672==    by 0x117BD1: value (optional:1005) 
==2570672==    by 0x117BD1: void iso15118::message_20::convert<iso20_ServiceSelectionReqType, iso15118::message_20::ServiceSelectionRequest>(iso20_ServiceSelectionReqType const&, iso15118::message_20::ServiceSelectionRequest&) [clone .cold] (service_selection.cpp:20) 
==2570672==    by 0x145548: insert_type<iso15118::message_20::ServiceSelectionRequest, iso20_ServiceSelectionReqType> (variant_access.hpp:30) 
==2570672==    by 0x145548: void iso15118::message_20::insert_type<iso20_ServiceSelectionReqType>(iso15118::message_20::VariantAccess&, iso20_ServiceSelectionReqType const&) (service_selection.cpp:42) 
==2570672==    by 0x123562: iso15118::message_20::handle_main(iso15118::message_20::VariantAccess&) (variant.cpp:58) 
==2570672==    by 0x1249AF: iso15118::message_20::Variant::Variant(iso15118::io::v2gtp::PayloadType, iso15118::io::StreamInputView const&) (variant.cpp:123) 
==2570672==    by 0x11C8D0: main (main.cpp:34) 
==2570672==  
==2570672== HEAP SUMMARY: 
==2570672==     in use at exit: 78,084 bytes in 5 blocks 
==2570672==   total heap usage: 14 allocs, 9 frees, 78,371 bytes allocated 
==2570672==  
==2570672== LEAK SUMMARY: 
==2570672==    definitely lost: 0 bytes in 0 blocks 
==2570672==    indirectly lost: 0 bytes in 0 blocks 
==2570672==      possibly lost: 136 bytes in 1 blocks 
==2570672==    still reachable: 77,948 bytes in 4 blocks 
==2570672==         suppressed: 0 bytes in 0 blocks 
==2570672== Rerun with --leak-check=full to see details of leaked memory 
==2570672==  
==2570672== For lists of detected and suppressed errors, rerun with: -s 
==2570672== ERROR SUMMARY: 0 errors from 0 contexts (suppressed: 0 from 0) 
Aborted 
bperry@bperry-Precision-T5610:~/tmp$  
  </pre> 
  You may find similar crashes, and these are worth reporting upstream. But the real useful output are the EXI messages generated that exercise different codepaths. You can re-use these against any charger or car in the future to test their EXI decoding. 
  <h3>The EVCCID</h3> 
		The EVCCID is the value that is often used to identify the vehicle to the charger for automatic billing. This value is the MAC address of the interface being used for communication by the vehicle. You'll notice this in the PCAPs in repository linked above. If you were able to spoof your MAC address on the vehicle, you'd be able to abuse Plug &amp; Charge. Some people propose a device that performs a man-in-the-middle, but this seems too complex and it should be doable from the vehicle itself. 
		</p> 
		<p> 
		You can, but not always, identify a vehicle's maker by its MAC address prefix. 
		</p> 
		<h3>Potential Vulnerabilities</h3> 
		<p> 
		Consider you are a developer who is told the SSH port or some web management application should listen on both IPv6 and IPv4, so you set the default configuration for the service to run on 0.0.0.0:1337 and [::]:1337. It would be incredibly easy to accidentally configure any sensitive applications to listen over the charger port, on both the electric vehicle and the charger itself. 
		</p> 
		<p> 
		Imagine bruteforcing the charger's SSH credentials over the charger cable because it was told to listen on all interfaces, not realizing the charger port is an interface sometimes. We can prove such an issue with the default BelayBox configuration. 
  </p> 
  <h3>Getting Nmap on the BelayBox</h3> 
  <p> 
    While Nmap is a little overkill for scanning a local interface, having Nmap on the BelayBox will also let you scan any V2X-enabled vehicles you connect to or charge with the BelayBox. These commands should be run on a regular x86/64 host and will cross-compile nmap for the BelayBox architecture. 
    <br/><br/> 
    <code> 
		wget https://pionix-update.de/belaybox-basecamp-demo/stable/poky-glibc-x86_64-belaybox-image-cortexa7t2hf-neon-vfpv4-raspberrypi4-toolchain-4.0.16.sh 
		</code> 
		<br /><br /> 
		Set up the toolchain. Then download the nmap source. Decompress the source code archive, and configure the project disabling features you won't need. Once configured, you can make the cross-compiled nmap binary. 
		<br /><br/> 
		<code> 
		wget https://nmap.org/dist/nmap-7.94.tgz 
		<br /><br /> 
		tar xzf nmap-7.94.tgz 
		<br /><br /> 
		cd nmap-7.94 
		<br /><br /> 
		source /opt/poky/4.0.16/environment-setup-cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi 
		<br /><br /> 
		./configure --host=arm-linux-gnueabihf --without-subversion --without-liblua --without-zenmap --with-pcre=/usr --with-libpcap=included --with-pcap=linux --with-libdnet=included --without-ndiff --without-nmap-update --without-ncat --without-liblua --without-nping --without-openssl 
		<br /><br /> 
		make 
		<br/><br/> 
		</code> 
		Now you have a version of nmap that can run on the BelayBox directly. You can transfer your built nmap binary and scan the local address. For the BelayBox charger development kit, eth1 is the powerline interface.  
		<pre> 
root@belaybox-105c:/var/nmap/nmap-7.94# ifconfig 
[snip] 
	  eth1      Link encap:Ethernet  HWaddr CA:22:4B:95:E4:62 
          inet6 addr: fe80::c822:4bff:fe95:e462/64 Scope:Link 
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1 
          RX packets:2 errors:0 dropped:0 overruns:0 frame:0 
          TX packets:34 errors:0 dropped:0 overruns:0 carrier:0 
          collisions:0 txqueuelen:100 
          RX bytes:1113 (1.0 KiB)  TX bytes:6137 (5.9 KiB) 
[snip] 
 
root@belaybox-105c:/var/nmap/nmap-7.94# ./nmap -6 -Pn -p- fe80::c822:4bff:fe95:e462 
Starting Nmap 7.94 ( https://nmap.org ) at 2025-03-30 00:32 UTC 
Nmap scan report for fe80::c822:4bff:fe95:e462 
Host is up (0.000065s latency). 
Not shown: 65530 closed tcp ports (reset) 
PORT      STATE SERVICE 
22/tcp    open  ssh 
111/tcp   open  rpcbind 
5355/tcp  open  llmnr 
61341/tcp open  unknown 
64109/tcp open  unknown 
 
Nmap done: 1 IP address (1 host up) scanned in 5.12 seconds 
root@belaybox-105c:/var/nmap/nmap-7.94# 
		</pre> 
		<p> 
		Once you identify the device being used for powerline communication, you can scan it. The BelayBox has SSH listening on the charger port IPv6 interface. A "vehicle" could connect, initiate the network, and attempt to authenticate to SSH over the charger cable. You may notice the IP address is a local link address, not something you would usually see outside of the host. However, this is the SLAAC auto-created IPv6 address, based on the MAC address of the interface.  
		</p> 
		<pre> 
06:52:34.040620 dc:44:27:1d:cd:45 (oui Unknown) > 86:75:a6:8b:a3:c8 (oui Unknown), ethertype Unknown (0x88e1), length 85: 
        0x0000:  017c 6000 0000 003e 0000 0000 0000 0000  .|`....>........ 
        0x0010:  0000 0000 0000 0000 0000 dc44 271d cd45  ...........D'..E 
        0x0020:  0000 0000 0000 0000 0000 0000 0000 0000  ................ 
        0x0030:  0086 75a6 8ba3 c854 4553 4c41 2045 5600  ..u....TESLA.EV. 
        0x0040:  0000 0000 0000 00                        ....... 
06:52:34.040907 86:75:a6:8b:a3:c8 (oui Unknown) > dc:44:27:1d:cd:45 (oui Unknown), ethertype Unknown (0x88e1), length 109: 
        0x0000:  017d 6000 0000 0056 0000 0000 0000 0000  .}`....V........ 
        0x0010:  0000 0000 0000 0000 0000 dc44 271d cd45  ...........D'..E 
        0x0020:  0000 0000 0000 0000 0000 0000 0000 0000  ................ 
        0x0030:  0086 75a6 8ba3 c854 4553 4c41 2045 5600  ..u....TESLA.EV. 
        0x0040:  0000 0000 0000 0034 2d5a e2e5 fa01 0045  .......4-Z.....E 
        0x0050:  3133 5058 5035 3337 4253 4e44 4733 53    13PXP537BSNDG3S 
06:52:34.427329 IP6 fe80::de44:27ff:fe1d:cd45.49153 > ip6-allnodes.15118: UDP, length 10 
06:52:34.428268 IP6 fe80::a9e4:a250:1925:5326 > ff02::1:ff1d:cd45: ICMP6, neighbor solicitation, who has fe80::de44:27ff:fe1d:cd45, length 32 
06:52:34.438078 IP6 fe80::de44:27ff:fe1d:cd45 > fe80::a9e4:a250:1925:5326: ICMP6, neighbor advertisement, tgt is fe80::de44:27ff:fe1d:cd45, length 32 
06:52:34.438131 IP6 fe80::a9e4:a250:1925:5326.15118 > fe80::de44:27ff:fe1d:cd45.49153: UDP, length 28 
06:52:34.451904 IP6 fe80::de44:27ff:fe1d:cd45.49153 > fe80::a9e4:a250:1925:5326.61341: Flags [S], seq 6509, win 2920, options [mss 1440], length 0 
</pre> 
		<p> 
      This is a snippet of a PCAP between a Tesla and charger. Note both of the addresses are a local link address (fe80::a9e4:a250:1925:5326.15118 and fe80::de44:27ff:fe1d:cd45.49153). Note the charger communication is happening over port 15118 over the IPv6 link local interface. You can imagine the interesting implications here. 
      <br/><br/> 
      As a network admin looking at logs for failed authentication attempts, you would see a link local address attempting to bruteforce or authenticating to SSH. Very confusing. In the below output, you can see the two SSH authentications; one over the LAN port and one over the charger port. 
<pre> 
root@belaybox-105c:~# last 
root     pts/1        fe80::10e4:7eff: Sun Jun  1 17:25   still logged in 
root     pts/0        192.168.1.135    Sun Jun  1 17:22   still logged in 
</pre> 
  </p> 
  <h2>The Open Charge Point Protocol (OCPP)</h2> 
  <p> 
    The Open Charge Point Protocol (OCPP) is used by charging station management systems (CSMS) to manage fleets of deployed chargers, even if it is a fleet of one in your garage. Chargers and the CSMS rely on web sockets to maintain communication. Most OCPP implementations meet the 1.6 standard. The 2.1 version will be the most recent version, with "lite" implementations also on their way for resource-constrained environments. 
    <br/><br/> 
    Today, we focus on expensive vehicles as the use-case for charging, but many people around the world are looking at how vehicles like tuk-tuks, motorbikes, and scooters can benefit from modern charging. 
  </p> 
  <h3>The Charging Station Management System (CSMS)</h3> 
  <p> 
    The CSMS allows owners of chargers to remotely maintain fleets of chargers. The most obvious use-case for this is a fleet of chargers maintained within a city, connecting to the CSMS via a SIM card or other wireless connection. The CSMS allows administrators to manage vehicle authentication, power usage, transactions, firmware updates, and much more. 
  </p> 
  <h3>Charger -&gt; CSMS Authentication</h3> 
      <p> 
        There are 3 profiles of authentication supported by OCPP. Chargers can authenticate to the CSMS via the following security profiles. 
        <br/> 
        <ul> 
          <li>Security Profile 1 - Plain Text HTTP with Basic Authentication</li> 
          <li>Security Profile 2 - Encrypted HTTP with Basic Authentication</li> 
          <li>Security Profile 3 - Encrypted HTTP with Client Certificate</li> 
        </ul> 
        Sometimes you may see no basic authentication requirement called Security Profile 0. Most chargers today implement and rely on Security Profile 2. 
      </p> 
  <h3>Potentional Vulnerabilities</h3> 
  <p> 
    During my initial research, I was able to focus on two open source CSMS projects; StEVe and CitrineOS. I reported one issue each to these projects, detailed below. 
    <h4>StEVe CSMS</h4> 
    <p> 
      The open source CSMS StEVe relies on Security Profile 0. The following message can be sent by any charger connected, with any idTag. 
      <br/><br/> 
      <code> 
        [2, "dddb2599-d678-4ff8-bf38-a230390a1200", "StartTransaction", {"connectorId": 42, "meterStart": 42, "idTag": "some id", "timestamp": "222222017-10-27T19:10:11Z"}] 
      </code> 
      <br /><br/> 
      Note the invalid timestamp. Once parsed by the StEVe CSMS, a database record is created which causes the Transactions page to crash, preventing any listing of current and past transaction in the system. 
    </p> 
    <h4>CitrineOS</h4> 
    <p> 
      CitrineOS implements several security profiles. The following vulnerability was found and fixed in CitrineOS. An invalid BootNotification message would cause the CSMS to crash completely. 
      <br/><br/> 
      <code> 
        [2, "5e58c16f-32ee-4589-ae5d-2272e5beeb71", "BootNotification", {}] 
      </code> 
      <br/><br/> 
      Note the empty JSON with no keys or values for the invalid BootNotification message. Below is the stacktrace printed once the message is recieved and processed. 
      <br/> 
      <pre> 
2024-11-22 18:57:26 /usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:88 
2024-11-22 18:57:26                     value: chargingStation.model, 
2024-11-22 18:57:26                                            ^ 
2024-11-22 18:57:26  
2024-11-22 18:57:26 TypeError: Cannot read properties of undefined (reading 'model') 
2024-11-22 18:57:26     at DeviceModelService.<anonymous> (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:88:44) 
2024-11-22 18:57:26     at Generator.next (<anonymous>) 
2024-11-22 18:57:26     at /usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:11:71 
2024-11-22 18:57:26     at new Promise (<anonymous>) 
2024-11-22 18:57:26     at __awaiter (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:7:12) 
2024-11-22 18:57:26     at DeviceModelService.updateDeviceModel (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/DeviceModelService.js:82:16) 
2024-11-22 18:57:26     at ConfigurationModule.<anonymous> (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/module.js:136:38) 
2024-11-22 18:57:26     at Generator.next (<anonymous>) 
2024-11-22 18:57:26     at fulfilled (/usr/local/apps/citrineos/03_Modules/Configuration/dist/module/module.js:18:58) 
2024-11-22 18:57:26     at process.processTicksAndRejections (node:internal/process/task_queues:95:5) 
      </pre> 
      This bug caused the CitrineOS service to crash completely, resulting in a full denial of service. 
    </p> 
    <h3>VolatileOCPP Project</h3> 
    <p> 
      A project I started when beginning this research was implementing some of the Open Charge Alliance OCPP compliance tests, mainly focused around security features. During this development, I also found an old OCPP fuzzer developed at a university in Germany several years ago. The code was technically broken and only targetted OCPP 1.6. Within the VolatileOCPP project is an updated fuzzer based on this code. You can find the full code project on GitHub at https://github.com/brandonprry/VolatileOCPP. Both of the issues noted above in StEVe and CitrineOS were found with this updated fuzzer. 
    </p> 
    <p> 
      In addition to the OCPP fuzzer, there are several Open Charge Alliance Compliancy tests written in a C# framework. These tests are written based directly on the official OCA Compliancy Test documentation. Not every OCA test is implemented, but most of the security related tests are. For instance, the framework implements the OCA checks for verifying the CSMS supports expiring or blocking EVCCIDs. 
    </p> 
    <p> 
      A nice by-product of the framework is easily spinning up a simulated charger to interface with a CSMS. 
      <pre> 
string url = "ws://localhost:8180/steve/websocket/CentralSystemService/1"; 
string protocol = "ocpp1.6"; 
 
List&lt;Task&gt; tasks = new List&lt;Task&gt;(); 
for (int i = 1; i&lt; 11; i++) 
{ 
    Charger c = new Charger(url, protocol); 
    c.ConnectorID = i.ToString(); 
    c.IDTag = "volatileocpp"; 
    tasks.Add(Task.Run(c.Simulate)); 
} 
 
foreach (Task t in tasks) 
    t.Wait(); 
      </pre> 
 
      This is the simplest example of a simulated charger interfacing with the StEVe CSMS which implements Security Profile 0. However, every security profile should be supported and most profiles (0, 1, and 2) have been tested on real-world CSMS software. 
    </p> 
  </p> 
  </body> 
</html> 

--EeQfGwPcQSOJBaQU--
