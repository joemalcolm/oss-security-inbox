X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["765" "Tuesday" "29" "August" "2017" "12:46:24" "+0300" "Alexander Popov" "alex.popov@linux.com" "<50169957-6b4a-9e6e-e8d2-8e09918e6cbc@linux.com>" "21" "Re: [oss-security] Linux kernel: fixed bug in net/core/flow_dissector.c" nil nil nil "8" "2017082909:46:24" "[oss-security] Linux kernel: fixed bug in net/core/flow_dissector.c" (number mark "U       alex.popov@l Aug 29   21/765   " thread-indent "\"Re: [oss-security] Linux kernel: fixed bug in net/core/flow_dissector.c\"\n") "<20170824180314.GA9813@hunt>" ("<459c5905-fded-264c-ac85-c5a456aa836e@linux.com>" "<20170824180314.GA9813@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30317 invoked by uid 550); 29 Aug 2017 10:40:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28068 invoked from network); 29 Aug 2017 09:46:38 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:reply-to:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uCZAHH/Iod13HRuB3u/eO5Gtr3XQKd0FzFAFWkNTMqw=;
        b=llxVGkiVWJJon7PTdRNkA6CT3C9f0Rl54cqyvWPr7oqI3o9dpaD42PFicZZElxKpnp
         p2sucnJy/IrgYupqxttOdFlTDI2ZAzZBFrZnWOc2a25MyYbUxf8mRecy8QgDrulVbsxo
         NdLibMB640vlUHCr6PQ8o8sm5ptfy8AhcQSeOQeYo+30P8IVbAkngXz5Juy7nxw1XlEP
         aQRk/a2sG9+s6bhd4pknjVamp1sxetr44VCmdJJteu9AzUqiR7TFlfyse6Rn5IS5QvfJ
         mGibhPVT+eS9W0YxHcyX8iCejTHeULhpjByOLedlXTEbEyqhde6FioFf4eH5woOFDcmm
         NvpQ==
X-Gm-Message-State: AHYfb5hmh3dR7G1Ldh7vfWdoZkXIn5LyK4cnHVpjUBAkWGCkoG4CVb+x
	zAZRlKmSKnNFnvet6mE=
X-Received: by 10.25.221.216 with SMTP id w85mr1334468lfi.36.1503999986506;
        Tue, 29 Aug 2017 02:46:26 -0700 (PDT)
To: Seth Arnold <seth.arnold@canonical.com>, oss-security@lists.openwall.com
References: <459c5905-fded-264c-ac85-c5a456aa836e@linux.com>
 <20170824180314.GA9813@hunt>
From: Alexander Popov <alex.popov@linux.com>
Message-ID: <50169957-6b4a-9e6e-e8d2-8e09918e6cbc@linux.com>
Date: Tue, 29 Aug 2017 12:46:24 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170824180314.GA9813@hunt>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Linux kernel: fixed bug in
 net/core/flow_dissector.c

On 24.08.2017 21:03, Seth Arnold wrote:
> On Thu, Aug 24, 2017 at 05:52:45PM +0300, Alexander Popov wrote:
>> I was asked to investigate a suspicious kernel crash on some Linux
>> server. It is at least a remote DoS (and maybe RCE): Linux is crashed by
>> receiving a single special MPLS packet.
>>
>> I bisected and found out that the bug was introduced in
>> commit b3baa0fbd02a1a9d493d8cb92ae4a4491b9e9d13
>> And was later fixed it in
>> commit a6e544b0a88b53114bfa5a57e21b7be7a8dfc9d0
> 
>> Is it worth requesting a CVE ID for that issue?
> 
> I think it is, it's an easy way to make sure all downstream consumers
> are alerted to the issue.

I've requested a CVE ID at https://cveform.mitre.org/ and got
CVE-2017-13715 for this issue.

Best regards,
Alexander
