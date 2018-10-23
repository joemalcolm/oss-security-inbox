X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["655" "Tuesday" "23" "October" "2018" "20:09:45" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20181023180945.GA13330@lorien.valinor.li>" "21" "Re: [oss-security] Buffer overflow in cabextract/libmspack (Fwd: New cabextract 1.8 and libmspack 0.8 release)" nil nil nil "10" "2018102318:09:45" "[oss-security] Buffer overflow in cabextract/libmspack (Fwd: New cabextract 1.8 and libmspack 0.8 release)" (number mark "U       carnil@debia Oct 23   21/655   " thread-indent "\"Re: [oss-security] Buffer overflow in cabextract/libmspack (Fwd: New cabextract 1.8 and libmspack 0.8 release)\"\n") "<20181022081735.1d940b71@computer>" ("<20181022081735.1d940b71@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27676 invoked by uid 550); 23 Oct 2018 18:10:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27655 invoked from network); 23 Oct 2018 18:10:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=B6d723gTSqiR8EVQOASoQSrbAovrPrmaU0tDuwprEQA=;
        b=j3J0ov0Y1H6UqdjjqLiijY3MXI/nX9bI2efUOPabAuVrGKKGUXnFKpoA242pUlUQfc
         EUj9VCUiLHPvFXw3MD8pw1IfDip2Vn3lZwIP5gOApER115SSvl+8WvOQgAql2WxZtti+
         VN4gnhQ3NJedxNqnv0aPZsumzoYWSAp49dlIS/5RMVatSKSJG0XFaObMTa6KluNzH2Hg
         3gBe0InABWsIJ4ljr//hyFYVYPOrgyi9xp7IneRGMN1sIDHwxqtoqIkcWSXD/BCzln0M
         LZt+83UQwQJWlQJMzreBLEoUuS3b1DVumfK3bA2mKl1KFEm1o1R6/5yDeJwZ/xIHTvOz
         SlCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=B6d723gTSqiR8EVQOASoQSrbAovrPrmaU0tDuwprEQA=;
        b=hPNnu1vri/l3hfhGEK/jAiPi/VfotUQcc1OUGb6EcoiiK9Vtl79Lhz3lRgNQo4ozmd
         vRBLOKMSTuS90p2bP3X1Ct5uS9SGzQzISNx+RJs7tiToX2mLGl/fBV4unml6/8zrCy+6
         qDHwZCabigAoL+kIg6whaZ53l70zLD4WUGhfrq1qxBGwPdkQJCT5mm/8oUJeT68tIVj4
         8iD8LC8z6d0JPfsNUODmm8zHJgLs8NW0Q5Zq9pbAJSpbxuGGjYt9IWkT6ZOTknHA9vhA
         HXkMSRqm2aP3t20Mi03gyCNPwN5qNvTf3/+CAwOjcwWwj2s7uBQ4rTnjVlmINVCceXl9
         s8pw==
X-Gm-Message-State: ABuFfoj5HSGoK0tDtQkiBWuHOfipjndI4bKB0ZwRa1jMNJqLah6Pf4pi
	wLS+4QNiJ4gALt/wbDduVXPXYCRTAJ8=
X-Google-Smtp-Source: ACcGV62tB2nHrNtey2AvxwiBWAGcajxMjFjzDnlm+DMh/98J4sFDzpI8eETOMnVRNx+7T2aBpU4jdQ==
X-Received: by 2002:a5d:4949:: with SMTP id r9-v6mr49526204wrs.114.1540318187647;
        Tue, 23 Oct 2018 11:09:47 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 23 Oct 2018 20:09:45 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20181023180945.GA13330@lorien.valinor.li>
References: <20181022081735.1d940b71@computer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181022081735.1d940b71@computer>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Buffer overflow in cabextract/libmspack (Fwd: New
 cabextract 1.8 and libmspack 0.8 release)

Hi

FTR, three CVEs were assigned by MITRE, whereeas one is explicitly
marked as DISPUTED, because upstream makes clear in the changelog
entry, that the chmextract utility is more an example code how to use
the library rather than "productised" binaries. Still a CVE was
assigned for downstreams using it as such.

Here are the assignments:

CVE-2018-18584:
https://github.com/kyz/libmspack/commit/40ef1b4093d77ad3a5cfcee1f5cb6108b3a3bcc2

CVE-2018-18585:
https://github.com/kyz/libmspack/commit/8759da8db6ec9e866cb8eb143313f397f925bb4f

CVE-2018-18586:
https://github.com/kyz/libmspack/commit/7cadd489698be117c47efcadd742651594429e6d

Regards,
Salvatore
