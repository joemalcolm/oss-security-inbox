X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["521" "Thursday" "18" "October" "2018" "16:57:29" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20181018145729.dlq7sljlhevxa4xo@jwilk.net>" "14" "Re: [oss-security] Using quilt on untrusted RPM spec files" "^Date:" nil nil "10" "2018101814:57:29" "[oss-security] Using quilt on untrusted RPM spec files" (number mark "        jwilk@jwilk. Oct 18   14/521   " thread-indent "\"Re: [oss-security] Using quilt on untrusted RPM spec files\"\n") "<c1946aa14addd525e5eb3f392eed26f119ad117a.camel@electronsweatshop.com>" ("<20180927155934.GB8696@f195.suse.de>" "<c1946aa14addd525e5eb3f392eed26f119ad117a.camel@electronsweatshop.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26029 invoked by uid 550); 18 Oct 2018 14:57:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26011 invoked from network); 18 Oct 2018 14:57:43 -0000
Message-ID: <20181018145729.dlq7sljlhevxa4xo@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180927155934.GB8696@f195.suse.de>
 <c1946aa14addd525e5eb3f392eed26f119ad117a.camel@electronsweatshop.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <c1946aa14addd525e5eb3f392eed26f119ad117a.camel@electronsweatshop.com>
User-Agent: NeoMutt/20180716
X-Ovh-Tracer-Id: 11483053150455256998
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtkedrfeeggdekvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Date: Thu, 18 Oct 2018 16:57:29 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Using quilt on untrusted RPM spec files
To: oss-security@lists.openwall.com

* Randy Barlow <randy@electronsweatshop.com>, 2018-09-27, 22:39:
>In Fedora we have similar challenges. We've got a tool called 
>fedora-review[0] that is maybe kinda similar to quilt.

Quilt is a tool to manage patch series, so maybe not that similar. :-)

>It uses mock[1] to build the source RPM (and mock does this in a chroot 
>to help with the problems you described)

If it's really just chroot, then I'm afraid that's not a sufficient 
protection. One can easily escape the chroot with ptrace(2).

-- 
Jakub Wilk
