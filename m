X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/10/13/6
Message-ID: <e473c5b4-ec1e-4776-6fca-562bfb75f7d1@seemoo.tu-darmstadt.de>
Date: Thu, 13 Oct 2022 22:15:50 +0200
From: Sönke Huster <shuster@...moo.tu-darmstadt.de>
To: Marcus Meissner <meissner@...e.de>, oss-security@...ts.openwall.com
Subject: Re: Various Linux Kernel WLAN security issues (RCE/DOS) found
Content-Type: text/plain; charset=utf-8

Hello again,

On 13.10.22 19:13, Sönke Huster wrote:
> Hi everyone,
> 
> In the following, I quickly introduce the PoC and briefly describe each CVE.
> 
> Please see attached:
> * The PCAP files containing the Wifi frames triggering the vulnerabilities and
> * inject-pcap.c to inject the Wifi frames into the 802.11 stack
I forgot to attach the inject-pcap.c file that sends the frames, sorry for that!

Best
Sönke
View attachment "inject-pcap.c" of type "text/x-csrc" (2449 bytes)
