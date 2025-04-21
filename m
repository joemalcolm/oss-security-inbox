Received: (qmail 27751 invoked by uid 550); 21 Apr 2025 16:48:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26580 invoked from network); 21 Apr 2025 16:48:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description; bh=urfgO5Bs9wg5EfyDcCYVFoU8KePdU95kBiw4xp90FDo=;
	i=b49a205f73f09af5fde31f6781a721d6b26ace42@notcom.org; t=1745254102;
	x=1745902102; b=okqUHebEyuwht5GjAmDow9M+FmhMsEfpm8HsrLl1vdnSHPVE3+itwYJm1drnH
	7lHpMx+S3UAK+qqxussi3VZOGc9ExEYshNTUnLFPNpTmGXya+19P9KglRtC/pr3xXuWtne9OuNWeH
	Qvl060hR3PQlFUgK6zY/6Lpkj7Qkx0Im7IOV4wnDQft7Od+UzU5FQG5/AzGQzfCoUfT2rL8yOxvae
	1PdXw3No2ElTn83rU1ytNI+vsBkmA5c8WOTWsggZzmVn74Qrk+LfNxevz9zB9nv6KnFlfocaN7y3Z
	YeKx9gEO8+u+Rge35DQaKO6URPvocQxFoEvzAP9mGxTqmK4SqQ==;
Date: Mon, 21 Apr 2025 19:48:02 +0300
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <ewvs55pqvqybv7telryghfmp4sypf2rcjximilprzn5a3pkaie@vcsibbkueub3>
Mail-Followup-To: oss-security@lists.openwall.com
References: <62e9c3e0-dd06-4d88-8192-1d0add89d0c8@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <62e9c3e0-dd06-4d88-8192-1d0add89d0c8@oracle.com>
User-Agent: NeoMutt/20241002-60-525451
Subject: Re: [oss-security] 3 new CVE's in old branch of GNU mailman

On Mon, Apr 21, 2025 at 09:08:33AM -0700, Alan Coopersmith wrote:
> 3 new CVE's have been published for GNU Mailman 2.1.39, as bundled with cPanel
> and WHM, credited to Firudin Davudzada and Musazada Aydan.
> 
> CVE-2025-43919: Directory Traversal in GNU Mailman 2.1.39 (cPanel/WHM Bundle)
> Details/POC: https://github.com/0NYX-MY7H/CVE-2025-43919
[…]
> CVE-2025-43921: Unauthenticated Mailing List Creation in GNU Mailman 2.1.39 (cPanel/WHM Bundle)
> Details/POC: https://github.com/0NYX-MY7H/CVE-2025-43921

I saw these mentioned earlier and could not reproduce either on a stock 2.1.39
install. Looking at the code that handles the "private" endpoint, it's also hard
to see a route from the username POST parameter to path construction.

Are these vulnerabilities due to modifications made by the vendor (cPanel LLC) to
their distributed version?

 -Valtteri
 
