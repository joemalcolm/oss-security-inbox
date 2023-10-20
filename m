Received: (qmail 28663 invoked by uid 550); 20 Oct 2023 13:04:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32309 invoked from network); 20 Oct 2023 07:42:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dgl-cx.20230601.gappssmtp.com; s=20230601; t=1697787713; x=1698392513; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KvthZV6nfGEcfJZEVP4p5tEmdMQCU/5glyLAwk/zKMo=;
        b=YV2GfrwUY2VT8n7xHJ+Y8OdtpBuP+ZNBvnXIHhY1dwA/JEFv9lR6ZL1/uJJ8ch3uEc
         g7KsxiU2BFo5STU/T2I5zUChHlnlJx2SS55tdfQAU/5i72CmnLoQETkvr2VLeVMyLHyR
         9QR72dMNzAPMCxjk8eeqzbbIi0MSce3OWswTmiN6wWV0xljLnqJtP5FusCzdEOVNO0Kx
         3NqsIMAIQARffp1S6Nj2fSwEWUrJQInhleG0aErjmVC/HVUtae5mbbSsxc7crKSniFrw
         vrl6BaRXYSBPkECTIneCtJ+iol/VlUtBBxB8iV/vVuS4muF1Kr28xKAo0H+JYBxTEfJH
         91nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697787713; x=1698392513;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KvthZV6nfGEcfJZEVP4p5tEmdMQCU/5glyLAwk/zKMo=;
        b=ftVdcodcJD5nuNoeC/pTth64tSZSuA/MUNsK0O6Ix7fNjQpiNPs+OMqDINXcqIpi0R
         V/dh6PeUPFZsSvdXHOCKpAcnHLWX8W8fu33vlurEfty2DxVKpdbIOdUWO+x6XW4fY+CU
         b8sPraJTv5hSn8TsPbRma1BvMtW07BbVHjXydVvgPzV+QcaNjN/NQCG5+Yw1PdZVhJ+B
         r+EA4O9HI/J6G0IMPY7w9pm+aatY/Gi2+ZW9Dpo2Irwe3+R3vUX4Yxut3ab0UWwxeq+I
         YScFkNjIBYlOfc1GV4io09scFsVd7tXtLyLHQGUFR19x7P+foZIH2MSpHC0moAofk20A
         da3A==
X-Gm-Message-State: AOJu0Yx+gSISXLB+D1hGPWcT9rYCf5M74YFBi5JzKE2262HveAbXxOGg
	IQX8iFvngOdbRQWV9jWq2k4PKJ831O4qY4S9hOXKyIZOBnVRz52QmiYfxE97
X-Google-Smtp-Source: AGHT+IFJkt1htoQN595SXSsMBrxKdsa5kzOob0OMLrH+wehZB1LAXR0FKBhEkSYiv8XreTiJAYNhYPH2SK2/srO9YMo=
X-Received: by 2002:a05:6102:4709:b0:44e:93f4:3c85 with SMTP id
 ei9-20020a056102470900b0044e93f43c85mr1325246vsb.12.1697787713075; Fri, 20
 Oct 2023 00:41:53 -0700 (PDT)
MIME-Version: 1.0
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
 <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net> <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>
 <20231019165354.kkjoxdbedeodyfik@yuggoth.org> <7039466aa03ec8a90e1ce3a2ae983421.a13627b7@limousine.hussar>
 <CAP9KPhDg3kpmsAyL74B5LuMmTq55pYoA+5LpJR0WkH0HO3Xw8g@mail.gmail.com>
In-Reply-To: <CAP9KPhDg3kpmsAyL74B5LuMmTq55pYoA+5LpJR0WkH0HO3Xw8g@mail.gmail.com>
From: David Leadbeater <dgl@dgl.cx>
Date: Fri, 20 Oct 2023 18:41:41 +1100
Message-ID: <CAP9KPhBoy-ES2LxZi1Ax7BaAHwF5B2--ZqWtYUVEBbQ4P66XiQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you anytime

On Fri, 20 Oct 2023 at 12:58, David Leadbeater <dgl@dgl.cx> wrote:
[...]
> Then you get a command being run with no interaction; this appears to
> work with xterm (384) + fish for example.

I missed that this is configurable in xterm, so this can be mitigated
by setting the Xresource:

disallowedPasteControls: BS,DEL,ENQ,EOT,ETX,ESC,NUL

i.e. Adding "ETX" (^C) to the default set. (I've asked if this can be
the new default.)

David
