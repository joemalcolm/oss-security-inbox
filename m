X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["828" "Monday" "20" "July" "2020" "10:57:21" "-0400" "Phil Pennock" "oss-security-phil@spodhuis.org" "<20200720145721.GA105966@fullerene.field.pennock-tech.net>" "19" "[oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens" "^Cc:" nil nil "7" "2020072014:57:21" "[oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens" (number mark "        oss-security Jul 20   19/828   " thread-indent "\"[oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens\"\n") "<CAH8yC8=HihpJA+tHrk6TbXhiOOOC43ZDYTY+kpyESwDn0cc7zw@mail.gmail.com>" ("<CAH8yC8m+ZK9AZcYZ0vrSgSTjGsi1F5=hEX9phvSSxhuMbRDEFg@mail.gmail.com>" "<CAH8yC8=HihpJA+tHrk6TbXhiOOOC43ZDYTY+kpyESwDn0cc7zw@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24070 invoked by uid 550); 20 Jul 2020 15:12:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20154 invoked from network); 20 Jul 2020 14:57:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202005; h=In-Reply-To:Content-Type:MIME-Version:References
	:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=SfpWKD2a6LdAE3bDsMOuLewgpHJmQTb14rJh+v4CFA8=; b=Z64Jlb4Df/32PH/NCnkJJxqOPr
	jttdxsKGYU2NTNfh2TyI3Kz8sKlznijAMh0h2olj3CVL3ztHfXcW9T5qnqJTQ6Wi3Kk3euXpApiNN
	a/0gDWjfRLzygKfBLYwcYt6GRu2VyOLdpuoemP6riGgGBqmy3JC99euwy4dl+S4pvdz36OJuQB7rb
	jrK5UyUBvEyBfU8qPTF0mzIf7jHwnAGxeTXocAbuGkftwex+Xd/zb95uz/8JsAeRF+CoEJ/IuwT8y
	nbc0MOSdURk5lR3VKbF4HUARyfsIJNUlXAZaIu5PXMbWX1bAAZA9kQZzLFFgvwMHtevqqdC0LIvhP
	WHzZjvlw==;
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202005e2; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=SfpWKD2a6LdAE3bDsMOuLewgpHJmQTb14rJh+v4CFA8=; b=TZDRfOC+kKNsXt3e2GFuS6Jym
	SoO00Bbi9E4N801iwr5507FhRVIFmR/svPu+dHt/AiJhhWhYhC53q2/PXY+AQ==;
Message-ID: <20200720145721.GA105966@fullerene.field.pennock-tech.net>
References: <CAH8yC8m+ZK9AZcYZ0vrSgSTjGsi1F5=hEX9phvSSxhuMbRDEFg@mail.gmail.com>
 <CAH8yC8=HihpJA+tHrk6TbXhiOOOC43ZDYTY+kpyESwDn0cc7zw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH8yC8=HihpJA+tHrk6TbXhiOOOC43ZDYTY+kpyESwDn0cc7zw@mail.gmail.com>
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/keys-2013rsa-2020cv25519.asc
Cc: Jeffrey Walton <noloader@gmail.com>
Date: Mon, 20 Jul 2020 10:57:21 -0400
From: Phil Pennock <oss-security-phil@spodhuis.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens
To: oss-security@lists.openwall.com

On 2020-07-20 at 04:33 -0400, Jeffrey Walton wrote:
> On Mon, Jul 20, 2020 at 4:21 AM Jeffrey Walton <noloader@gmail.com> wrote:
> >     -Wl,-R,$ORIGIN/../lib -Wl,-R,$HOME/tmp/ok2delete/lib
> 
> My bad... It does not matter how this $ORIGIN token is quoted. Perl
> always expands it.

I've encountered this in build systems before, where the quoting is
inconsistent and apparently can result in different levels of dequoting
for a target depending upon how it was reached.

What I've used for building those has been to specify %ORIGIN instead of
$ORIGIN and then binary-edit the resulting binary to switch that % back
to a $.  All quoting issues disappear and all binary offsets are stable.
Just make sure the binary-edit step is before any binary signing. :)

At some point, it's also worth considering static linking.

-Phil
