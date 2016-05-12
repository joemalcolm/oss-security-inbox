X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1220" "Wednesday" "11" "May" "2016" "20:36:56" "-0700" "David Chan" "david@dchanm.com" "<e82d52b0-9a85-8fd5-b599-23f0786cba86@dchanm.com>" "32" "Re: [oss-security] GraphicsMagick Response To \"ImageTragick\"" "^Date:" nil nil "5" "2016051203:36:56" "[oss-security] GraphicsMagick Response To \"ImageTragick\"" (number mark "        david@dchanm May 11   32/1220  " thread-indent "\"Re: [oss-security] GraphicsMagick Response To \"ImageTragick\"\"\n") "<1462820605.18084.2.camel@nixnuts.net>" ("<alpine.GSO.2.20.1605090828220.23612@freddy.simplesystems.org>" "<20160509172045.GC9754@perpetual.pseudorandom.co.uk>" "<1462820605.18084.2.camel@nixnuts.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31764 invoked by uid 550); 12 May 2016 11:23:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5528 invoked from network); 12 May 2016 03:37:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dchanm.com; s=dchanm;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=lCpyWhf2ZV8i1J3B+pzfUiIoeweI6gnEM/5od3XIYN4=;
        b=JmJeTYByxshIsDvnNYO0Yjp2NAQBmv4sL8ehc7kDCchGi/pvJG1YSDPAII+yXXfxD0
         k7Re84aC/WhuS5mqiD8YF53nDyQSrmUtKaNX8YDh5jfEqIhKxhxciPLOJl0YodcZ/BtA
         d8yrrFCdxOceQT9P3RFUGj69MO26tgDmTkDc8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=lCpyWhf2ZV8i1J3B+pzfUiIoeweI6gnEM/5od3XIYN4=;
        b=eB6sPGpxCjdhFUKsaVIR2ukQrWAxLnWjT9eoz/vjIbjrF0YvDTZi53a4HlDbCGlTGO
         BxF2ZzylYwdTf+k8ifyVbYyvSBZZj8NpMgIkpinhdsCBj+1QNaRHoBm4qzF+j4hWnFgd
         6EsbO7wjyaXRBapY54LRiZt0VR2IRXst7kSIr05GM63xeAAf+HRLhp0jHgQfCuGL0m6c
         Q1wKLoQoGMmua+0udeHCsNLUlAVIzBIZX3So7K0pU0p/xphZlv7cFpBNizkcUOyJ6hiu
         DeozqFGo1Nqc1sNdA28WDRUXCyOSw2rRsMaXySf19ysiu+SHn6FuKXRhdHM4+P62ALhD
         BJCQ==
X-Gm-Message-State: AOPr4FWRlsA8iL0zJE8e5dt9N0O/uWGuAl9g1PjA8MsP+p7eK4BcmgeVLmxKQit0QcIHng==
X-Received: by 10.66.90.196 with SMTP id by4mr10316810pab.117.1463024219091;
        Wed, 11 May 2016 20:36:59 -0700 (PDT)
References: <alpine.GSO.2.20.1605090828220.23612@freddy.simplesystems.org>
 <20160509172045.GC9754@perpetual.pseudorandom.co.uk>
 <1462820605.18084.2.camel@nixnuts.net>
Message-ID: <e82d52b0-9a85-8fd5-b599-23f0786cba86@dchanm.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <1462820605.18084.2.camel@nixnuts.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Wed, 11 May 2016 20:36:56 -0700
From: David Chan <david@dchanm.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GraphicsMagick Response To "ImageTragick"
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On 5/9/2016 12:03 PM, John Lightsey wrote:
> On Mon, 2016-05-09 at 18:20 +0100, Simon McVittie wrote:
>> On Mon, 09 May 2016 at 08:29:40 -0500, Bob Friesenhahn wrote:
> 
> 
> The "man" attack vector needs the same determination.
> 
> It is similar to CVE-2016-3717 in impact, but uses a different
> codepath. The existing fixes for CVE-2016-3717 do not address it.
> 

The patch which fixes the gplt vector also fixes a related vector in gs.
The lack of -dSAFER when invoking Ghostscript allows for arbitrary
file read/write. Sander Bos noticed that ImageMagick isn't affected
by this bug. Given that the -dSAFER bug is specific to GraphicsMagick,
I think a separate CVE should be assigned.

David
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXM/pYAAoJEFNDksGFxk4g+kMH/2oeXMLdfZqup02Zq5IJ1zIf
cDpU2CLrDcNyyKAC81WviR6A8jj7VX58rI4O4be/OBlO+6X6CP5PVZzERisqlqdO
sIpHryXReA1rjPPDB3WWXY3ijLPVozitTmM0p+81TfHrkL0LTc/ZXUMeAEw2xRgw
dzU31nAMTIKV/FS87VkTesScotDLAEXXAxeD4LEepGoxTCqVctjLvk0yXBg9tpZc
LwB+2EKMA45bMo0mRNRUnSCIhQXNHSdTpjnmR53nd5BYZtVPvVy3n31QaSXmt4MF
OsghVcp44/Nb8Etkictu78yHusnXa6stTctdLzRS+51XzGj6nvW4VF89T+ASl/Q=
=yy3S
-----END PGP SIGNATURE-----
