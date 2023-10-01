Received: (qmail 14004 invoked by uid 550); 1 Oct 2023 18:30:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1248 invoked from network); 1 Oct 2023 18:20:23 -0000
X-SourceIP: 86.4.155.149
X-Authenticated-Sender: zarniwhoop@ntlworld.com
X-Spam: 0
X-Authority: v=2.4 cv=MPKm2uVl c=1 sm=1 tr=0 ts=6519b85b cx=a_exe
 a=69rpv3kaMhdJyoIRs2s4pw==:117 a=69rpv3kaMhdJyoIRs2s4pw==:17
 a=IkcTkHD0fZMA:10 a=bhdUkHdE2iEA:10 a=8r2qhXULAAAA:8 a=RAskpV9TuDtEdLD39x0A:9
 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10 a=8gvLZcY7Nlvl4CGD_6nf:22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ntlworld.com;
	s=meg.feb2017; t=1696184411;
	bh=CSniU+Hxk4ODEUpm4Hn1SOiD+3PZxhagbzNVGm88mG0=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=OqYLsgDvPrcUAntNZyaK4No6SbYl7WAwPBYM5OmB6LaDEKvT+TjA1QESmJZQj6bQk
	 RkZ9Iipocu2vJCMNjrmJn25NwEjsbb1ZRHykLna9Wk86CwQs36UFsPvisb8aCpz3pH
	 etrJkI7O4oHbV2gJ04OwzzlrrvRoJFwwh1R9D4DlP04nNvflaYiGjjQf4+aRmUUtM6
	 sV8zy86L9+RN/xqabIFF9iGe4sZ+7UOAH/0PSeiT8WknVNdvdeTccj1ywOUneyb4mz
	 +8tvrqDMIvxwM06MQ0uXK6FkwaIjNag0+N99GfVRBeG3NdtbMJG0ZwntaNmVPMPTX1
	 6HEOMwcd8rsWg==
Date: Sun, 1 Oct 2023 19:20:11 +0100
From: Ken Moffat <zarniwhoop@ntlworld.com>
To: oss-security@lists.openwall.com
Message-ID: <ZRm4W-K4CtjLxcAQ@llamedos.localdomain>
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Clacks-Overhead: GNU Terry Pratchett
Content-Transfer-Encoding: 8bit
In-Reply-To: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
User-Agent: Mutt/2.2.12 (2023-09-09)
X-CMAE-Envelope: MS4xfM012iFZSd2LGvMqxKNMtacgztQaZjQqNf722E3ARtPKZ9UrtFbHZ6uPGZQHBjQsVHdIYFMEeI3fwjMiM/t4jdZwlcRkaeoOIzM5oqHdNrT1DbMpdKCN
 s6RIQjwXiEo8Wy+YjKdXmsTVEc72q+LXWjpwhmaQ8f8Pz/c80Ii5+Tuwzt/866ZSElScvike+Ff9QoesjLctW7SQZJoG7MVjB0Q=
Subject: Re: [oss-security] CVE-2023-5217: Heap buffer overflow in vp8
 encoding in libvpx

On Thu, Sep 28, 2023 at 11:37:23AM -0700, Alan Coopersmith wrote:
> Google has announced another media parsing bug, this time correctly documenting
> both the base library and Chrome versions affected in the CVE.
> 
> https://www.cve.org/CVERecord?id=CVE-2023-5217 states:
> 
>    Heap buffer overflow in vp8 encoding in libvpx in Google Chrome prior to
>    117.0.5938.132 and libvpx 1.13.1 allowed a remote attacker to potentially
>    exploit heap corruption via a crafted HTML page.
>    (Chromium security severity: High)
> 

Does anyone know how far back libvpx is affected ?  Asking because
seamonkey-2.53.17.1 is apparently shipping a version of libvpx-1.7.0
from 2020 and I'm told it no longer builds against system
libvpx-1.13.1, although a recent version apparently built against
libvpx-1.11.0.

ĸen
-- 
  Men marched away, Vimes. And men marched back. How glorious the
  battles would have been that they never had to fight! -- Jingo
