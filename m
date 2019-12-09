X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1255" "Monday" "9" "December" "2019" "16:28:35" "+0100" "Noel Kuntze" "noel.kuntze+oss-security@thermi.consulting" nil "36" nil "^Date:" nil nil "12" nil nil (number mark "        noel.kuntze+ Dec  9   36/1255  " thread-indent "\"Re: [oss-security] Shell wildcards considered dangerous?\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Shell wildcards considered dangerous?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20142 invoked by uid 550); 9 Dec 2019 16:22:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26443 invoked from network); 9 Dec 2019 15:28:48 -0000
X-Virus-Scanned: amavisd-new at thermi.consulting
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=thermi.consulting;
	s=201909; t=1575905315;
	bh=fLU3UucFet9JTvch9q9SOEdFBbTxD09/cSmLoGSym+M=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=E4Nvpk4rImBpX/5XubwvWZCA1GnOMFV8TzxWKpZu9c/4W/kfuLCMS1Myf8ddeIahq
	 3ebxgUE3iQtjvG110YxtYZLnfyX+L8Fq6iK3gCqrxuU6/BCXc0HJ8/++Fr7VppePUb
	 m48n2aaCKsT6zZfHWRZBgA7YR3gCs2hiojy5uZCoz87KDifAiXAsde/lbC8ZEDvWBZ
	 RxtpKLh48TfCkGg9yhyQ+T0cx1zuDBTvGTtwfUrB9P0VQiuW85ZsMSh47cVmeP0MaM
	 J+kPvmAGe/PBOyAIXrPXgJN/khWMQUP8QgJrIewjNJ3Ig0lyQsz3yGDPxNtU0Y71lJ
	 RMW+rpAlecS0A==
References: <CAGUWgD-yn2kf3T69ri7ahcCfKm=kiMBnxeb84mnH-qqYWQNUdg@mail.gmail.com>
 <8bd059ae-5faa-46fa-71d0-bb0f61ea8e62@thermi.consulting>
 <20191209151808.GA35251@orca>
Message-ID: <a12cddb8-7753-5e5f-de0f-8c575c2632d2@thermi.consulting>
MIME-Version: 1.0
In-Reply-To: <20191209151808.GA35251@orca>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Date: Mon, 9 Dec 2019 16:28:35 +0100
From: Noel Kuntze <noel.kuntze+oss-security@thermi.consulting>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Shell wildcards considered dangerous?
To: oss-security@lists.openwall.com

Hello Leonid,

The message was about the attack vector on applications that put together argument vectors
based on user input, not specifically about human use of the shell.

The same problem applies to that though. Users need to use -- to terminate the option list.

Kind regards

Noel

Am 09.12.19 um 16:18 schrieb Leonid Isaev:
> On Mon, Dec 09, 2019 at 03:42:47PM +0100, Noel Kuntze wrote:
>> That is only a problem if the developer(s) foolishly didn't use "--" to
>> terminate the command line options or they did, but the argument parser of
>> the called program does not understand that "--" is a command line option
>> terminator.
> I'm sorry, but this has nothing to do with developers of PROGRAM to use or not
> user "--", but rather with the user not properly sanitizing the input to the
> PROGRAM and not understanding how shell works. Specifically, doing
> PROGRAM *.tar is just asking for trouble for many reasons, not mentioned in the
> original email. See [1] (and in general BashPitfalls) for a proper discussion...
>
> HTH,
> L.
>
> [1] https://mywiki.wooledge.org/BashPitfalls#for_f_in_.24.28ls_.2A.mp3.29
>

-- 
Noel Kuntze
IT security consultant

GPG Key ID: 0x0739AD6C
Fingerprint: 3524 93BE B5F7 8E63 1372 AF2D F54E E40B 0739 AD6C

