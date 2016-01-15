X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["401" "Friday" "15" "January" "2016" "16:56:13" "+0100" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9p_NYhaR2Oa_3kOwPCnTFsAHZWa_Q2vYXDXLAuf0C7a5A@mail.gmail.com>" "12" "Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Date:" nil nil "1" "2016011515:56:13" "[oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        Jason@zx2c4. Jan 15   12/401   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<20160114171301.GH28298@localhost.localdomain>" ("<20160114171301.GH28298@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31899 invoked by uid 550); 15 Jan 2016 15:56:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31881 invoked from network); 15 Jan 2016 15:56:27 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:date:message-id:subject:from:to
	:content-type; s=mail; bh=3hOoHmneHylCCOgx65KEh1lWaWE=; b=0m+sFl
	1hea+bPN4o+x3r5Emc4qXvOpTFjmmEeP0B6fzMkurf2eVVfLq/Vox3RTmuakEqlc
	ARvp6EuBaxBKXWVf5zgAbvoItRoTOPGsEzn/syDbGhqmpsTFGoZGxE+HNJlNwmwJ
	En/nebNwwhEpzTwDrr0fK/BRyMVNupSaTzCM4z+9btC9f3q9XoLw/RisIlYI9MJ9
	Z+9qtDiKeEmjdKBzF/wdluiSJcK1zEMe9wjTeB84iNV419MEeQCab1z27z7sTx94
	DOTMvsD3T+VSupwS/HSvPe/NVKq3gbvqSzAGoKWqr5UOt/wtgf9N9URJwQz+k3Uy
	MV3HfJeEKKr2w/rw==
X-Gm-Message-State: AG10YOSxHZjHUPmkFZCi4DkL4yu2CUdOjdCT626bZNSP81mJliplXDk15onm9GRsPQhrHTtp7qsg/3gUFZClFQ==
MIME-Version: 1.0
X-Received: by 10.28.16.8 with SMTP id 8mr4438592wmq.77.1452873373920; Fri, 15
 Jan 2016 07:56:13 -0800 (PST)
In-Reply-To: <20160114171301.GH28298@localhost.localdomain>
References: <20160114171301.GH28298@localhost.localdomain>
X-Gmail-Original-Message-ID: <CAHmME9p_NYhaR2Oa_3kOwPCnTFsAHZWa_Q2vYXDXLAuf0C7a5A@mail.gmail.com>
Message-ID: <CAHmME9p_NYhaR2Oa_3kOwPCnTFsAHZWa_Q2vYXDXLAuf0C7a5A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Fri, 15 Jan 2016 16:56:13 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - Roaming through the
 OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: oss-security <oss-security@lists.openwall.com>, 
	Qualys Security Advisory <qsa@qualys.com>

Great work Qualys. One question about the PoC:

On Thu, Jan 14, 2016 at 6:13 PM, Qualys Security Advisory
<qsa@qualys.com> wrote:
> # env ROAMING="heap_massaging:linux" "`pwd`"/sshd -o ListenAddress=127.0.0.1:222 -o
> UsePrivilegeSeparation=no -f /etc/ssh/sshd_config -h /etc/ssh/ssh_host_rsa_key

Does your proof of concept patch actually include support for this
heap_massaging mode?

Thanks,
Jason
