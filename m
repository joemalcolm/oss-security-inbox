X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1975" "Tuesday" "10" "January" "2017" "07:27:13" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170110062713.GB10582@lorien.valinor.li>" "52" "Re: [oss-security] Re: CVE Request: icoutils: exploitable crash in wrestool programm" nil nil nil "1" "2017011006:27:13" "[oss-security] Re: CVE Request: icoutils: exploitable crash in wrestool programm" (number mark "U       carnil@debia Jan 10   52/1975  " thread-indent "\"Re: [oss-security] Re: CVE Request: icoutils: exploitable crash in wrestool programm\"\n") "<328b2aec213f4e34b3cbc4c6b4707b37@imshyb02.MITRE.ORG>" ("<20170108084501.ncsnqkhyytpawpbh@eldamar.local>" "<328b2aec213f4e34b3cbc4c6b4707b37@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13839 invoked by uid 550); 10 Jan 2017 06:27:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13818 invoked from network); 10 Jan 2017 06:27:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zffW+HQRG03GmPp1hl4EkFyV9iukvhzSGORgRuZXIFc=;
        b=udIGDbN6XgDuIEiZvjpshC2RlfHs+wGvBXHESuz96c26Scc3vAjINYTZh82ZBJXXhh
         g78rHOIy97QBfa9tqXvZNSO7x0jX/KCagunXB0KHJ0P3iQ24iefrCwGkaH0L+BlRO2MJ
         T7TEnn7CsNKFvWlEu8R2cYgNCVbI596v7TQMTCoevNCghuGY57PfSXg/PejzLkmHZN3y
         +rZFgj5h704Y3nPFG8kT00gtVGW/Cf53uqXN/VkNSdo5jXZaZDWKmIHEID2ipML5bEo4
         PZq2FHM+Hc5cWWgDUTbsR8Q+bbxnNFMQX4Y7M070aZ6SnI3Mqgvt7gAxjzSxYRWJ0Cmt
         Jniw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=zffW+HQRG03GmPp1hl4EkFyV9iukvhzSGORgRuZXIFc=;
        b=twOmg1+xvAoPwFPb66PtPkEO0kAedZ5PEwQmbY8FB7e9Xrl5Za2pKktHD2embnkN9k
         QD7/0AfonhOCPsDrSTGNlZPf3Ickh6x7ZDzkaewsHUZY0Rg9c8H4WHXgs9E7e0pOkNbj
         YMbX/qsItU7fCaQ8ogZATvc57oF/Y4/A4wEp+y43U+lqKVyKFlIei/x2sxUWGDcYBBcC
         3JVmuuKVdk+1Ly3pVCUFemaD/r6R/WhnxpFM5jr1AmNI5etRXtdJp4lwxsyBv47ayLwk
         Mzhuszy1mXeNXqrjyn9Kvm/Hipl+A4SmxAfIVG7bBcM1+1gnhtHI4GUNmdZnsexD/FXB
         7BaQ==
X-Gm-Message-State: AIkVDXJ76G+BQIZoDPaS99G2gDYBYd9DpgvABm2ZamEiX6Vvhu/AFE4q/amOHcrfpIQiew==
X-Received: by 10.200.48.110 with SMTP id g43mr1201100qte.277.1484029636466;
        Mon, 09 Jan 2017 22:27:16 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 10 Jan 2017 07:27:13 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org, Colin Watson <cjwatson@chiark.greenend.org.uk>
Message-ID: <20170110062713.GB10582@lorien.valinor.li>
References: <20170108084501.ncsnqkhyytpawpbh@eldamar.local>
 <328b2aec213f4e34b3cbc4c6b4707b37@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <328b2aec213f4e34b3cbc4c6b4707b37@imshyb02.MITRE.ORG>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] Re: CVE Request: icoutils: exploitable crash in
 wrestool programm

Hi,

On Sun, Jan 08, 2017 at 02:47:40PM -0500, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > an exploitable crash in wrestool from the icoutils
>
> > https://bugs.debian.org/850017
> > https://anonscm.debian.org/git/users/cjwatson/icoutils.git/plain/debian/patches/check-offset-overflow.patch
>
> >> wrestool/fileread.c
>
> >> On 64-bit systems, the result of subtracting two pointers exceeds the
> >> size of int
>
> Use CVE-2017-5208.

Thanks for the CVE assignment. Ftr, this was upstreamed as

http://git.savannah.gnu.org/cgit/icoutils.git/commit/?id=0d569f458f306b88f60156d60c9cf058125cf173

It turns out that this is not enough, so upstream has issued

http://git.savannah.gnu.org/cgit/icoutils.git/commit/?id=4fbe9222fd79ee31b7ec031b0be070a9a400d1d3

to make the checks more stringent. Quoting a reply from upstream to the Debian
maintainer "But as I see it there are still combinations of the arguments which
make the test succeed even though the the memory block identified by
offset&size is not fully inside memory&total_size ??? e.g. offset < memory, but
size is larger than the difference.  I have attached another patch (applies on
top of yours) that more stringently checks all the memory bounds. Hopefully
that will preempt shenanigans with specially crafted files containing weird
offsets and sizes."

Could you please assign a further CVE for this follow up fix?

Furthermore I would like to ask if the following two commits from upstream,
can have as well an identifier assigned:

http://git.savannah.gnu.org/cgit/icoutils.git/commit/?id=1aa9f28f7bcbdfff6a84a15ac8d9a87559b1596a
http://git.savannah.gnu.org/cgit/icoutils.git/commit/?id=1a108713ac26215c7568353f6e02e727e6d4b24a

They relate to the Red Hat bugzilla entry at

https://bugzilla.redhat.com/show_bug.cgi?id=1249276

All the three followup commits are included in Debian with the recent
upload to Debian unstable, versioned as 0.31.1-1.

Regards,
Salvatore
