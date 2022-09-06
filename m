Received: (qmail 15426 invoked by uid 550); 6 Sep 2022 10:54:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11391 invoked from network); 6 Sep 2022 10:45:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=csie-io.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=Ec+cxXPQXOiYB4yrVMIHVk160r6pAbAaeHB2vNERAVs=;
        b=aPGQKX5V7HRP9S58PdlppXprbDaKXfJaTKWypYlP/fiqO1szIwt7+N5dKyYN2Xp13t
         oBNHm/3WPF9SPvOE/+/GLyPuTT9jCsUCS58tzcHr7CJkKSzr+9CCytrteOqEkvIOY7jc
         ePvDhhR7c/vNQyBzqT13jb1iYsoqiWKoFXmydsxlFK4Wn9MLW9gjWikIqnzUx5gkEy1B
         zXZRTYUERjKAkcthzEZpgJDSXsAyuIZLEbF98+7LOuIQhn/HbNGo504Eb7ngdK/fOYS1
         SUZvMi8y2uXZbzexnFG0nR+TPKB4rRRoyzd8oDVyI5Me32I91X/BAs8C7e6NsNnE2vRi
         aUvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=Ec+cxXPQXOiYB4yrVMIHVk160r6pAbAaeHB2vNERAVs=;
        b=lLIfdlF4jsyipR7aa9QWy1hCBfJ1jisCQnlW2gFX9Y7SakMoXHi4QOehMLR3zNlxtm
         7zdozuyB4zAXgzoSALk8RH/W9pnP9Gzcr/fqWxblFLdsuwGPXvc9lo6RCi4MsztvVUYF
         hBA3fUO7VcFqfkJJ83XJ5WVx39/YbJour9SOYpcu/f7GGeE6qiilKAwqfBgvKADUBQk7
         FOsSC+eo6DeA+7wI4I7El8zWeNj3DZq54M2Fz69aohXnldn6k+v8KrOOB+tfg1I1Hyv8
         VDAlDXae7xlPTWJpXvhJiabL/n0nF0dsyfZm34qZaCwTax6IMa41J3/ksp53S+hU8ih9
         vjfQ==
X-Gm-Message-State: ACgBeo26/Q587lyGcCklzenXOHQ3MADFRNk2rPkoOKlyda/OgKMU7utk
	1JCWVx8QV5y5CxlWW2SYY5ss3qpuOvRxwp6tRSweeg==
X-Google-Smtp-Source: AA6agR7c7Aeoz7KLo2f0D9hsJ9aYYoNTam2K3VAI0pJNl8/D9u4R7UqMhxd4IXChHYkb/c4/+07puzEhFX+sA80QuNs=
X-Received: by 2002:a9d:362:0:b0:637:257e:3824 with SMTP id
 89-20020a9d0362000000b00637257e3824mr20381371otv.148.1662461142954; Tue, 06
 Sep 2022 03:45:42 -0700 (PDT)
MIME-Version: 1.0
From: Joey <joey@csie.io>
Date: Tue, 6 Sep 2022 18:45:32 +0800
Message-ID: <CAGXZeP28q6nGrEQT5fUtEP0T1MX1Q+a6NrwD87Y8sB4qF=2r_Q@mail.gmail.com>
To: thomas@monjalon.net
Cc: announce@dpdk.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2022-28199: DPDK mlx5 driver error recovery handling vulnerability

Hi all,

I know 18.11.11 is EOL.
But does anyone know if the vulnerability affects 18.11.11?

Thanks.

Joey
