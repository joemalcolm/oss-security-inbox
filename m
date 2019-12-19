X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2972" "Thursday" "19" "December" "2019" "11:26:09" "+0800" "GalyCannon" "galycannon@gmail.com" nil "83" nil "^Date:" nil nil "12" nil nil (number mark "        galycannon@g Dec 19   83/2972  " thread-indent "\"[oss-security] CVE requests: three vulnerabilities in ImageMagick\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE requests: three vulnerabilities in ImageMagick" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7889 invoked by uid 550); 19 Dec 2019 11:35:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26350 invoked from network); 19 Dec 2019 03:26:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=w6McM1+mvIIkX/eff5SwYu9D4nUV1gzLDPBMG9IsBOc=;
        b=bAu0vpgtpubLyb9P0gRE2zhij9/Uf25R7gK3dNac81rQGmSJ4co/LoDnw1ccyw4usc
         v4IwDvs/UzUrfJw4lK8ngvwEpBPxCMzc40njdzT5UKz4wEgoLaRg7zko6d5srwa91v78
         9fuyZt/Hc2OHHYBv5O+W7/9iGQhA7o3ofYOMaQrtWek9R5RySUMBl0fa2IFHDJTbh6wL
         HGx0MdG2hUjY4eRMItXrEun2wUTWBLV+gy3X2nKkJjXzZ7tUFvhT5Ysa1j2PJgExBn3h
         4Hk2YM/L9RHebYtqbogqa7DQVo3ykRmQBR+obEMpvNNccoKl1+LTIWciifrhVJx1n9nQ
         vkvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=w6McM1+mvIIkX/eff5SwYu9D4nUV1gzLDPBMG9IsBOc=;
        b=NOy6e9gvomNvYOInyvuYze4w/ghyv2Fi3b+tBb+16vGSWPLiqQOwZ6hu80isyyZzQP
         nCFXg1lNnQYMkG5Q3AiDAeGigl8Xjm9PLO6bbhfXlubx/TqGXvdNyFO3cnSRWY0kbZ4R
         t+tDnvlWN0JFs6TihEPSKZxYg9LXdff2jEW3zBJR4oDSYyEcdbIom2BuEICmi1ZDSJVq
         xASlx/PkHNzCEiasKziu0TkOC7GW1czyJgTA3GeZo13ClHRCflTYKLrejlLcQE0X9RWd
         2unGIMcD2L95dj7MDnSzePNOBPXRf5lWjaqh0AOuPzFTkgKKYCjNr4D7Co5N8sJayaal
         hbOg==
X-Gm-Message-State: APjAAAVNsQSlJ5Y0Oje1DrVbhQAu2p/Ey8/8ILzK/FEERm1b/L+45tMb
	cJj0loPVrreVxW7XqeE8tavU7eAB5M+yxVnPWD1oeTPb
X-Google-Smtp-Source: APXvYqxWjmFiYYRKCxTTvUygLf9yai9Rki5lyry8o1BrFuocGkN9I4RzftwlswkpbT7oruciyXNeNTIn9lr+chTMjSc=
X-Received: by 2002:a6b:f802:: with SMTP id o2mr4384485ioh.79.1576725980541;
 Wed, 18 Dec 2019 19:26:20 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CADh9TwLptrnPz_4vjkvJWmH8wOWhqD0brLPQmvizzQ1QvFP56A@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000fa7aa8059a061fdd"
Date: Thu, 19 Dec 2019 11:26:09 +0800
From: GalyCannon <galycannon@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE requests: three vulnerabilities in ImageMagick
To: oss-security@lists.openwall.com

--000000000000fa7aa8059a061fdd
Content-Type: text/plain; charset="UTF-8"

Hi,
   I have found three vulnerabilities in ImageMagick and all this have
patched by ImageMagick developer team. However, I requested cve ids for
these vulveribilities and get no any response. How should I  request CVE
ids for vulnerilities I found in ImageMagick now? Which CNA should I
contact with to assign CVE ids for open source software such as imagemagick?
   The three vulnerabilities details as below.
    1. heap-buffer-overflow in WritePNGImage of png.c
[Suggested description]
In ImageMagick  7.0.8-43  and ImageMagick6  6.9.10-43, there is a
heap-buffer-overflow overflow in the function WritePNGImage of png.c ,
which allows remote attackers to cause  arbitrary code execution, denial of
service or possibly have unspecified other impact via a crafted image file
.
[Vendor of Product]
https://imagemagick.org
[Affected Component]
function WritePNGImage of png.c
[Attack Type]
Remote
[Attack Vectors]
magick convert $poc ./test.png
[Reference]
https://github.com/ImageMagick/ImageMagick/issues/1561
https://github.com/ImageMagick/ImageMagick6/commit/34adc98afd5c7e7fb774d2ebdaea39e831c24dce

https://github.com/ImageMagick/ImageMagick/commit/d17c047f7bff7c0edbf304470cd2ab9d02fbf617

[Discoverer]
galycannon of JDCloud Security Team

   2. heap-buffer-overflow in WriteSGIImage of coders/sgi.c
[Suggested description]
In ImageMagick  7.0.8-43  and ImageMagick6  6.9.10-43, there is a
heap-buffer-overflow overflow in the function WriteSGIImage of coders/sgi.c
, which allows remote attackers to cause  arbitrary code execution, denial
of service or possibly have unspecified other impact via a crafted image
file  .
[Vendor of Product]
https://imagemagick.org
[Affected Component]
function WriteSGIImage of coders/sgi.c
[Attack Type]
Remote
[Attack Vectors]
magick convert $poc ./test.sgi
[Reference]
https://github.com/ImageMagick/ImageMagick/issues/1562
https://github.com/ImageMagick/ImageMagick/commit/6ae32a9038e360b3491969d5d03d490884f02b4c

https://github.com/ImageMagick/ImageMagick6/commit/9e7db22f8c374301db3f968757f0d08070fd4e54

[Discoverer]
galycannon of JDCloud Security Team

 3. heap-use-after-free in MngInfoDiscardObject of coders/png.c
[Suggested description]
In ImageMagick   7.0.9-7, there is a heap-use-after-free in function
MngInfoDiscardObject of coders/png.c , which allows remote attackers to
cause  arbitrary code execution, denial of service or possibly have
unspecified other impact via a crafted image file  .
[Vendor of Product]
https://imagemagick.org
[Affected Component]
function MngInfoDiscardObject of coders/png.c
[Attack Type]
Remote
[Attack Vectors]
magick convert $poc /dev/null
[Reference]
https://github.com/ImageMagick/ImageMagick/issues/1791
https://github.com/ImageMagick/ImageMagick/commit/916d7bbd2c66a286d379dbd94bc6035c8fab937c

[Discoverer]
galycannon of JDCloud Security Team

Regards,
galycannon

--000000000000fa7aa8059a061fdd--
