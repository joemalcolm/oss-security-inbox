X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["820" "Friday" "3" "November" "2017" "21:41:59" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20171103204159.rnszmrzvcwkxkaak@jwilk.net>" "25" "Re: [oss-security] nvi crash recovery" "^Date:" nil nil "11" "2017110320:41:59" "[oss-security] nvi crash recovery" (number mark "        jwilk@jwilk. Nov  3   25/820   " thread-indent "\"Re: [oss-security] nvi crash recovery\"\n") "<20171103212659.378593da@pc1>" ("<2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>" "<20171103181243.lwtf3a5f4zjr4pzi@matica.foolinux.mooo.com>" "<20171103212659.378593da@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11560 invoked by uid 550); 3 Nov 2017 20:42:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11536 invoked from network); 3 Nov 2017 20:42:16 -0000
Message-ID: <20171103204159.rnszmrzvcwkxkaak@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <2ECE9D9EEF1F524185270138AE23265955B0B9CE@S0MSMAIL112.arc.local>
 <20171103181243.lwtf3a5f4zjr4pzi@matica.foolinux.mooo.com>
 <20171103212659.378593da@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20171103212659.378593da@pc1>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Ovh-Tracer-Id: 15320120034376734630
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedttddrgeekgddufedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Date: Fri, 3 Nov 2017 21:41:59 +0100
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] nvi crash recovery
To: oss-security@lists.openwall.com

* Hanno Böck <hanno@hboeck.de>, 2017-11-03, 21:26:
>nvi saves recovery files to /var/tmp/vi.recover and creates them with 
>600 permissions.
>So all the problems discussed don't really apply here.
>However the dir itself gets created by the first user using nvi.

Sounds like a recipe for disaster.

In Debian, installation scripts try to ensure that /var/tmp/vi.recover 
is root-owned:

   if [[ -L /var/tmp/vi.recover || \
	  -e /var/tmp/vi.recover && ! -d /var/tmp/vi.recover ]]; then
     echo "Cannot create recovery directory /var/tmp/vi.recover" 1>&2
     exit 1
   fi
   [ -d /var/tmp/vi.recover ] || mkdir -p /var/tmp/vi.recover
   chown root:root /var/tmp/vi.recover
   chmod 1777 /var/tmp/vi.recover

This is racy and can be exploited to chmod arbitrary files:
https://bugs.debian.org/771375

-- 
Jakub Wilk
