X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1072" "Tuesday" "15" "November" "2016" "01:26:52" "+0000" "Hector Marco-Gisbert" "hmarco@hmarco.org" "<26e060c4-231e-7e40-7039-e65588b64f19@hmarco.org>" "40" "Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell - Update: Dracut is also vulnerable" nil nil nil "11" "2016111501:26:52" "[oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell - Update: Dracut is also vulnerable" (number mark "U       hmarco@hmarc Nov 15   40/1072  " thread-indent "\"Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell - Update: Dracut is also vulnerable\"\n") "<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>" ("<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23586 invoked by uid 550); 15 Nov 2016 01:39:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17722 invoked from network); 15 Nov 2016 01:27:06 -0000
X-Virus-Scanned: Debian amavisd-new at mfilter6-d.gandi.net
X-Originating-IP: 92.16.32.231
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org,
 bugtraq@securityfocus.com
References: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
From: Hector Marco-Gisbert <hmarco@hmarco.org>
Message-ID: <26e060c4-231e-7e40-7039-e65588b64f19@hmarco.org>
Date: Tue, 15 Nov 2016 01:26:52 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell -
 Update: Dracut is also vulnerable

Hello,

We have found that systems that use Dracut instead of initramfs are
also vulnerables (tested on Fedora 24 x86_64).

Regards,
Hector Marco & Ismael Ripoll.


> Hello All,
> 
> 
> Affected package ---------------- Cryptsetup <= 2:1
> 
> 
> CVE-ID ------ CVE-2016-4484
> 
> 
> Description ----------- A vulnerability in Cryptsetup, concretely 
> in the scripts that unlock the system partition when the partition 
> is ciphered using LUKS (Linux Unified Key Setup).
> 
> This vulnerability allows to obtain a root initramfs shell on 
> affected systems. The vulnerability is very reliable because it 
> doesn't depend on specific systems or configurations. Attackers
> can copy, modify or destroy the hard disc as well as set up the
> network to exflitrate data.
> 
> In cloud environments it is also possible to remotely exploit this
>  vulnerability without having "physical access."
> 
> 
> Full description: ----------------- 
> http://hmarco.org/bugs/CVE-2016-4484/CVE-2016-4484_cryptsetup_initrd_shell.html
>
>
> 
> 
> Regards, Hector Marco & Ismael Ripoll.
> 
