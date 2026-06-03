Received: (qmail 25730 invoked by uid 550); 3 Jun 2026 07:30:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25692 invoked from network); 3 Jun 2026 07:30:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780471829; x=1781076629; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7cm/Otql7Y98lCGXxihrU1j3Zb9H31nWA6PoAB1rf0M=;
        b=RPqputy+MKH6tLLSu1JiGdKKQhwW2xNLehN/VckBtyqsjxPgg+Ns91X+3Gqk5/JwwX
         sgW1PWv5XzSvQb2A8O13rIB2q7Jv/oed996NNVQ/ujZhmrb13bkp9x6MhR9/bTrPKuyg
         IcGrWa5Hub9BbhhXCSDRmH20kIawQZbg9dBJ10YaRmPqS1Zr5MH3droI59Je4uiK4Mb8
         VuFVCXVkL+ofnIaqqFSXkzcq6yMouWgUoQdsNnYuWiJSe/OMLKP8rEWL59W5+U1lXIz/
         ghljhQxlMA+fLlg6N9XfrDqQGWsVUDzKHfjKuUY1e2lTbQ69zryoLltI+sb3S16bTB45
         6RDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780471829; x=1781076629;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7cm/Otql7Y98lCGXxihrU1j3Zb9H31nWA6PoAB1rf0M=;
        b=dGv3Glkhy8Egy3LKXBowAeqjJeMWOIVPHuxWXGi6g2HLML12KkWt99bmtrroKkKk8Z
         awb/Vr7iEwHmSopJRoRUojiW2r7jUVkEm79BK6cPiAVLNVAtMxziBrRRYztjbKtMmNOj
         JtxdJ0qTesMnY+uqdkiizUyeg40dwFISpYNP5Jn2lShmEc7iwnxqSjtUxTOqR1D9rfoz
         t4tFoCtGNBWzFLwPoNJZ2kqECuVQjHGJUxWkk7rylq+r2Ztpd4s8LU0u4zrTJb72Aegk
         qzFb6e9lgXsJjBANla8EZdv6kORcEvszHEo51bIfVOjqsFUSay/CS9Sv0OlrKl4lf7TU
         v3lg==
X-Gm-Message-State: AOJu0YyIrJ9FSNYUCSUuQvnQHCqn/VoWejVbNDH14sd+nlDYWTozOP6d
	5VFYztCI0nqGo5KXUUvf8i58l6B+/Syb3ENJZSTAQYghr/lvVGKzXT/3Gc2lEjEq
X-Gm-Gg: Acq92OGsZc0dW+CL8UyjMaCPI3siuMhxdRRPqWvIkBIjUsoxv4IulMXgiZONKBbOt7h
	p4IkLqzo1FBqfR5JVSoofEO7bS7JTKcyyD2XcLMz4TfZxoZ8lme/uL1GH63o/FH4e8y0+Vd6Xcc
	wHC6GDs+WZ3K+TptgWuikohjFHz5I9mKm6M+5B0sgeyf105CagOSAwBCJHm7pcORzRq5DNUbID+
	yuGEnoK8wS+I3AQtvcN/w6vZ5JjETq4OawWoR3cchEel6YIYZHn0FKrhTUiqW+VWIUqZSTBMeXl
	B+SDkQhBWjcWrLgSadaAmIZnmX/ZGxSUIcRxysX2Bn32GNj9WMrY417Pdur/Y9kudwHgW+a9Ic9
	flRsd36C573x7HHjuMvBD2fjkguwhc7uPqRfvskQwCY9z7A+/AKmlfjbXXJKpIe1pAmsIUXvqIw
	MkCFzzfal+gcleCsgz/d/im/4MMTSWxyobLnx48NEalbXOEz7Am+Facg3haUGDY8rTHcdxIQ==
X-Received: by 2002:a05:600c:a09:b0:490:958f:2a5c with SMTP id 5b1f17b1804b1-490b5ed6375mr33522535e9.17.1780471818005;
        Wed, 03 Jun 2026 00:30:18 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 3 Jun 2026 09:30:16 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ah_YCI0plp3Mx10w@eldamar.lan>
References: <BY3PR09MB8833EF36AACF81744D6571F9D6122@BY3PR09MB8833.namprd09.prod.outlook.com>
 <225905f1-c362-4ff9-9143-63b97fa9e3c7@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <225905f1-c362-4ff9-9143-63b97fa9e3c7@oracle.com>
Subject: Re: [oss-security] Fwd: FreeIPMI 1.6.18 Released with security fixes

Hi,

On Tue, Jun 02, 2026 at 05:52:56PM -0700, Alan Coopersmith wrote:
> The below notes the new release fixes "exploitable buffer overflows in [...]
> ipmi-oem commands".
> 
> I don't see a CVE issued for it yet, as CVE-2026-33554 covered a different
> set of subcommands fixed in the previous 1.6.17 release.

As a followup: CVE-2026-50031 was assigned for the issue fixed in
1.6.18.

Regards,
Salvatore
