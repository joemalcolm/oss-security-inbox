X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1805" "Tuesday" "30" "May" "2017" "14:16:13" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1496168173.9871.1.camel@gmail.com>" "37" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Date:" nil nil "5" "2017053018:16:13" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        danielmicay@ May 30   37/1805  " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<20170530165015.GA4884@openwall.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>" "<CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>" "<CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>" "<20170530165015.GA4884@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1986 invoked by uid 550); 30 May 2017 18:16:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1964 invoked from network); 30 May 2017 18:16:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Vb/AfbAsZEA93KClXdcIXCxEZ9on1cidUFasNqd6vHA=;
        b=Vy7WAmFaswUvN2z5HpD2oJX7Utz8OMEF5mC1u0QzdbhfsTrMnFbBYyPX8Gji0WaUQM
         B59GH6cXjWCeczvaTH/YAGYqeEZI/lGx61/QvS88uQrwFi+bQnO+yEixX8IacuMty8mg
         S02vevJ/biFGD/kEEq369WCfScEpREpbHRPDpesskZA3xPZHTJ5hlcEhIe1pyAeZsNo5
         4h4okNWe/2Vef70vXhIl0OCesk6Hy5DVopoP1q8W3lBTL8wJDrffTLB8ebxcEFxJiXBp
         AnstIw6IqIV6mKSenV15Q9xrpLIRem/q8URn+Y4PKCZ/X+H7feozL/gYlbu9Sb6/YSfk
         OvWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vb/AfbAsZEA93KClXdcIXCxEZ9on1cidUFasNqd6vHA=;
        b=UbVXq29XEEEN3AQIYwHPCCwVorFsLwcAarL7iL7pAFh976NPdFvsJ/Lli4LCoXZiH+
         ZSb9J1b4S6/BU1hTxqlqqdBLh7WbRq4TeN92Pmdh621sfbKWWEZ+9y5+o9+QBTZglHEb
         jim05oukPpabV5besQ/Xp+B3aJEY9ZQU3X18ElXGnSWh7MfCdC9I6qQ9DCzuGFrdvRVq
         5pnBQGL4QLjOQGGJVY8j/7gVudhOinzlSQYM9Wv4iikUoflVioAALcrt3qIUc7APrhRL
         4DtOfFRYDbJp5QrRX+ePDikrwA4Fje36GM4jsUt+oHHgDF3Td1oB8U2dxT18ynnNMWeH
         aY6g==
X-Gm-Message-State: AODbwcC1Mar/RbqHd8XfbPxuud4ZyDpCAlY7quNkb10ddyWcXfPTPwa0
	Dty2nnQEKnVhHBBl8MA=
X-Received: by 10.36.91.212 with SMTP id g203mr3220353itb.94.1496168175244;
        Tue, 30 May 2017 11:16:15 -0700 (PDT)
Message-ID: <1496168173.9871.1.camel@gmail.com>
In-Reply-To: <20170530165015.GA4884@openwall.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
	 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
	 <d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>
	 <CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>
	 <CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>
	 <20170530165015.GA4884@openwall.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Tue, 30 May 2017 14:16:13 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: oss-security@lists.openwall.com

> This might or might not be a valid point, but I think handling the
> issue
> via the distros list (and thus with an embargo) was wrong.  It would
> have been better to have this discussion (if we must) on oss-security
> right away, rather than only now when a second related issue is
> brought
> in here later same month.

init= is just an example. Can also do things like enabling kernel kgdb /
other debugging via headphone port / usb. Can mess with a lot of things
via the kernel line. Disable the IOMMU, get full DMA access via USB-C
perhaps. There are so many things that can be messed with and it really
makes no sense to consider them vulnerabilities without doing something
like *whitelisting* kernel cmdline arguments. Another easy one: disable
dm-verity or change the dm-verity key, bypassing verified boot for the
rest of the OS.

Obtaining CVEs for these bugs presumes that the kernel line is not
absolutely trusted by design, which it is. A CVE wouldn't be accepted
for each of a hundred cmdline arguments that puts intentional trust in
the cmdline, so it really shouldn't be accepted for ones that put
unintentional trust in it. They are memory corruption bugs and should
probably be fixed... but it's about as important as fixing the code
style, not a security fix.

The security fix for Android was CVE-2016-10277 in

https://source.android.com/security/bulletin/2017-05-01

I really don't buy into the idea the arbitrarily chosen methods to gain
code exec via the cmdline are vulnerabilities themselves because there
are many that don't even require bugs...

Might as well consider disabling NX, kernel rodata protection, setting
up the IOMMU, setting memory region addresses (including breaking it /
corrupting memory), etc. to be mitigation bypasses / vulnerabilities if
these count.
