X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["709" "Friday" "23" "November" "2018" "15:16:30" "+0100" "Marcus Meissner" "meissner@suse.de" "<20181123141630.dvpucbyue22ecqed@suse.de>" "18" "Re: [oss-security] Crashes and memory safety bugs in dcraw" "^Date:" nil nil "11" "2018112314:16:30" "[oss-security] Crashes and memory safety bugs in dcraw" (number mark "        meissner@sus Nov 23   18/709   " thread-indent "\"Re: [oss-security] Crashes and memory safety bugs in dcraw\"\n") "<20181123092217.7e4a0f84@computer>" ("<20181123092217.7e4a0f84@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24440 invoked by uid 550); 23 Nov 2018 14:16:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24418 invoked from network); 23 Nov 2018 14:16:43 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20181123141630.dvpucbyue22ecqed@suse.de>
References: <20181123092217.7e4a0f84@computer>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20181123092217.7e4a0f84@computer>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: NeoMutt/20170421 (1.8.2)
Date: Fri, 23 Nov 2018 15:16:30 +0100
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Crashes and memory safety bugs in dcraw
To: oss-security@lists.openwall.com

On Fri, Nov 23, 2018 at 09:22:17AM +0100, Hanno Böck wrote:
> Hi,
> 
> dcraw is a tool to process raw images from digital cameras.
> It easily crashes with various issues (tested version 9.28.0). This was
> very shallow testing (afl fuzzing with random inputs, not starting with
> valid images), I assume there's much more. I reported those a long time
> ago to its author, he didn't seem interested in fixing such issues.
> 
> Some applications use dcraw automatically to parse images (gthumb,
> kphotoalbum, kde thumbnailers, gwenview).
> 
> Input samples are base64.

One thing to look at replacement of dcraw is probably libraw, which is more
active. (It used the dcraw sources originally.)

Ciao, Marcus
