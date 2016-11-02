X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["758" "Wednesday" "2" "November" "2016" "11:07:45" "+0000" "Stuart Henderson" "stu@spacehopper.org" "<20161102110745.o3la3xffk4xh6rgr@symphytum.spacehopper.org>" "19" "[oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" "^Date:" nil nil "11" "2016110211:07:45" "[oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" (number mark "        stu@spacehop Nov  2   19/758   " thread-indent "\"[oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host\"\n") "<alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>" ("<alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26246 invoked by uid 550); 2 Nov 2016 11:19:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14291 invoked from network); 2 Nov 2016 11:08:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=spacehopper.org;
	 h=user-agent:in-reply-to:content-disposition:content-type
	:content-type:mime-version:references:message-id:subject:subject
	:from:from:date:date:received:received; s=spacehop2; t=
	1478084865; bh=RwJq8dTMYta9igpOWGyKlN2bV+gwL+jGLsCAzkO35P0=; b=M
	hV9pQCCRUNQh18qQrckOG6KG6bcHD5r/BV+DSS027YCEWbhmXvwSARXC6EFm88Lk
	JRAmyhKditRC4H15IatMs2DMFuxBdCRdCrq9HifS23HkLFt4/r569c/lN/JQjFy4
	AdpqNEb7+wlM3et93LUnK1DVPukHtyUFSmWQv1yS3qXuF8BofW/a9x2UuPvCuH7d
	3d0lpJYmA5XemZYW/WdMaaLjswYK2MAjygyLVYMEe04cUuGKrhfWQK+zrZvVgJzi
	z3+/S+rPRMu2u0z3j3hJRQXG2AQ1Yzh0VEA5AfiLqetoZ20tc0ghXpwW56yc32ab
	S4iwzAkhUYu57x7dEKP6g==
X-Virus-Scanned: amavisd-new at spacehopper.org
Message-ID: <20161102110745.o3la3xffk4xh6rgr@symphytum.spacehopper.org>
References: <alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1611020812500.375@tvnag.unkk.fr>
User-Agent: NeoMutt/20161028 (1.7.1)
Date: Wed, 2 Nov 2016 11:07:45 +0000
From: Stuart Henderson <stu@spacehopper.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host
To: oss-security@lists.openwall.com

On 2016/11/02 08:13, Daniel Stenberg wrote:
> In version 7.51.0, the parser function is fixed.
> 
> A [patch for CVE-2016-8625](https://curl.haxx.se/CVE-2016-8625.patch) is
> available.

This switches to using libidn2, which hasn't had a substantial commit
in around 5 years (https://gitlab.com/jas/libidn2/commits/master), and
currently doesn't even show up in the file listing for the https
version of alpha.gnu.org/gnu/libidn/. (Somehow http and https are
different; the https version has HSTS headers which you might need to
take into account if comparing).

Moving something as widely used as curl to this makes me feel a little
uneasy (and I'm a bit surprised it wasn't called out specifically in the
release notes).

Has anyone poked at it much yet?

