X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["618" "Monday" "11" "July" "2016" "17:19:23" "+0200" "Florian Weimer" "fweimer@redhat.com" "<4a28b9ab-e52e-8de1-3b83-d7dbb1881653@redhat.com>" "15" "Re: [oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS" nil nil nil "7" "2016071115:19:23" "[oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS" (number mark "U       fweimer@redh Jul 11   15/618   " thread-indent "\"Re: [oss-security] CVE-2016-5011: util-linux: Extended partition loop in MBR partition table leads to DoS\"\n") "<CAKG8Do4_-amOBNVDiSviBPqT6hQBcAQG5h9_L+JGderoQx0cOw@mail.gmail.com>" ("<CAKG8Do6jzQUGa-hgGxa8oxYAhkz3qm8sMMXmbC8HuNJZKGqbLw@mail.gmail.com>" "<20160711125157.7ed792f4@pc1>" "<CAKG8Do4_-amOBNVDiSviBPqT6hQBcAQG5h9_L+JGderoQx0cOw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18068 invoked by uid 550); 11 Jul 2016 15:19:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18050 invoked from network); 11 Jul 2016 15:19:37 -0000
To: oss-security@lists.openwall.com
References: <CAKG8Do6jzQUGa-hgGxa8oxYAhkz3qm8sMMXmbC8HuNJZKGqbLw@mail.gmail.com>
 <20160711125157.7ed792f4@pc1>
 <CAKG8Do4_-amOBNVDiSviBPqT6hQBcAQG5h9_L+JGderoQx0cOw@mail.gmail.com>
From: Florian Weimer <fweimer@redhat.com>
Message-ID: <4a28b9ab-e52e-8de1-3b83-d7dbb1881653@redhat.com>
Date: Mon, 11 Jul 2016 17:19:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <CAKG8Do4_-amOBNVDiSviBPqT6hQBcAQG5h9_L+JGderoQx0cOw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Mon, 11 Jul 2016 15:19:25 +0000 (UTC)
Subject: Re: [oss-security] CVE-2016-5011: util-linux: Extended partition loop
 in MBR partition table leads to DoS

On 07/11/2016 01:32 PM, Cedric Buissart wrote:

> I looked at other projects to see what is being done to prevent this
> particular loop from happening. Until now, tools I checked are protected
> either by detecting the loop (i.e.: actively searching for a relative
> offset of 0 for the next EBR, as done by this util-linux patch; partprobe
> and fdisk are doing that), or enforcing a limit on the maximum number of
> partitions for a device (Linux kernel, kpartx & other tools I currently
> checked)

How does util-linux protect against loops which are non-empty?  Does it 
reject negative offsets?

Thanks,
Florian
