X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1952" "Tuesday" "21" "August" "2018" "11:21:15" "-0400" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>" "51" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "8" "2018082115:21:15" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        alex.gaynor@ Aug 21   51/1952  " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>" ("<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>" "<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23786 invoked by uid 550); 21 Aug 2018 15:21:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23768 invoked from network); 21 Aug 2018 15:21:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=lx98kdIktbDVoqOnBqDciLHtEClgo81deoUMVhG4Tbc=;
        b=EiPvD9Y7QKaIrV7A6h+H9PPYham0HAMITJoh9xuM1nuXfyg7Dem0IciWBQqYlLg49Q
         XNn/ZTrYfWs3a/fVWZp14pm8D+xuZF5jcnTtX1kMqtY9V2tkMh04fuCfXTxv2rESOEtU
         iTzPxLefQ4SVSH6H7HsBE2T6auV+v/tLKLzUGlNgGB40WGK2JBo7iHkgVxv7vYAZrzVh
         GZvzkqf6vqoi5ZK6Whm/dBlNzi/6V20sfvDcJBnT+U/jUlHAFxxOp4SqeHOJQW/zGY+9
         lQGQ62AF+Qw8+ks7p2OeZyDX1upS5TVLLcdWQczvHtvMU+xzCXxbH/zKh7d3Q3hLGN3d
         Gu7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=lx98kdIktbDVoqOnBqDciLHtEClgo81deoUMVhG4Tbc=;
        b=g3nv/+Usul7PlADj95SosPeFc7xpiNwp365cSsl+ZTlQxRWX4R1tWXmkI/LEzmPFX3
         PE6p/tdJlMuahKlh863vm3xq2pFNIhuNmSnDUp97/JhQbFbJC30uhA5WeC6DF8qp/edm
         ZsOC/ZwCPJ7SUw6kVUZfFM19l39IVG6SiE7maCEll/7ftCXJuTTPhmZXiOhpwSaRpXN3
         8c5X0R+Zb6kdkVcaKy5CXoXgPUEMMiH5EL6K5oXNhQFJZ5WF76m0AnHhDj+VjzDONcGX
         VvO91fH1Yv9WWRt11SGwWaTDr61Txjs68Tl5NbD+YGLI1rXReMZVPLrRLNnIVTTx6fvz
         iy4Q==
X-Gm-Message-State: AOUpUlFeZcOfgBwp1rvtYvLz1NeuEv+QryHZYSFxn+fXWfbVsRsQchqL
	jZQnovOY4h63dzUUYUhutGp2NxUTXkq1CrnwuanMjw==
X-Google-Smtp-Source: AA+uWPzLMWfypHyoV6t9dvrktpCy65Y/veymKPuYjNVyJCqSstTWdGJYIQz5Us+cmxPowYuPd7TOyAI38Hx/lv+2psQ=
X-Received: by 2002:a2e:9e17:: with SMTP id e23-v6mr33605493ljk.14.1534864888385;
 Tue, 21 Aug 2018 08:21:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>
 <CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com> <alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>
In-Reply-To: <alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>
Message-ID: <CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000735dea0573f3949e"
Date: Tue, 21 Aug 2018 11:21:15 -0400
From: Alex Gaynor <alex.gaynor@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS
 coders in policy.xml by default?
To: oss-security@lists.openwall.com

--000000000000735dea0573f3949e
Content-Type: text/plain; charset="UTF-8"

A small note. Both ImageMagick and GraphicsMagick process various file
formats that can nest a different image file inside of them. These are very
frequently implemented with a call to ReadImage(), with no checking that
it's the expected file format. (As a result, the fuzzer finds various
impressive chains, with sometimes 3 different image formats nested inside
of each other).

The conclusion of this is that people _must not_ attempt to do their own
format detection and then pass the data to IM/GM, because this can be
bypassed with nested formats. It's imperative that GS truly be disabled
with either policy.xml or by uninstall GS.

Alex

On Tue, Aug 21, 2018 at 11:01 AM Bob Friesenhahn <
bfriesen@simple.dallas.tx.us> wrote:

> On Tue, 21 Aug 2018, Tavis Ormandy wrote:
> >
> > I think those thumbnails should be disabled, but you've probably noticed
> I
> > think everything related to untrusted ghostscript should be disabled :-)
>
> I have posted to the GraphicsMagick Announcements mailing list
> regarding your findings (with a link to this list) and suggested that
> a fool-proof solution is that Ghostscript should be uninstalled.
>
> Uninstalling Ghostscript entirely might cause software using libgs to
> not execute at all unless a stub library is put in its place.
>
> Dependencies on Ghostscript are much larger than one would initially
> think due to Postscript being the traditional output from Unix
> software for "printing" and thus it is used as an intermediate format
> in order to convert between formats.  EPS content is also embedded in
> some other formats.
>
> Bob
> --
> Bob Friesenhahn
> bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
> GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
>


-- 
All that is necessary for evil to succeed is for good people to do nothing.

--000000000000735dea0573f3949e--
