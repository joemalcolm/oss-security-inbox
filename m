Received: (qmail 20251 invoked by uid 550); 13 Apr 2024 12:07:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10103 invoked from network); 13 Apr 2024 09:10:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1712999428; x=1713604228; darn=lists.openwall.com;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GEptdn1qORsobJ4xSgtecgHldGI/D/DyjPmDQW+h6F0=;
        b=dsYMHA9v07xnonCvwxt5DoPDbrhSmftPDDDJRd4AJl4DqiwYOGvmqwERu13DQepp9E
         SWmllL7MA396VG5wdGCx7lYkqicif+sreirZuruiYv7i7misSKmjUJ4THvIanpcSJFvz
         5j0Crge/gI3aRvsp33eX4SjcIgZqt+GiOoL0j7F9aCGGBcMuEcoSF7Z5ASHk21nxilfu
         9xFSUF7B3O4ftC57pV2ag79ZFHu/+lZ+tl4nQLAXaU6QsEYcT8ULeIWXX31QsZ9Yyg4F
         Iahnc3jTabf9F80wCltzrr49s4Qcra8sDmS+GFRcj/Iwmz5Z8nhLvqJWkuDc+z2WkSkR
         B8bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712999428; x=1713604228;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GEptdn1qORsobJ4xSgtecgHldGI/D/DyjPmDQW+h6F0=;
        b=BsTPGmb3XceaC+okoZhR3jl2ngnT9hrNUE1Nue1Z2okcOD2OHguD3EZ+aQwBe+RurJ
         xJR8Lb55l1vUPSeCvSVBBTk4CVDoz0jQd7k1IF9DamCAq6vf/w/re/Lx3OAAURaT9InD
         BmJp/v9Tt5HkWG7IYU7sp8hfwhSyo9sIcE1xEsDnZ4n+a1RiEqGJQjsIiu+FeWaNmzu1
         fxU8J1QLMUCufkubuXfRoCpHaLuSrKeo2/fZGAXAnO8oYzsiPvIopVfIPGe0LD/ztBPW
         ezSEDGajwLUwQGZxhw0DGdUjuS5zzR+jiDSviKPc0nGuWCHj6Q20jWMKJFp+7V1mqeUU
         hK6A==
X-Gm-Message-State: AOJu0YxiBpdx4W3vFjAEpcHdKUQ9FmOv5ksmLqCaCqWSgB/Wut8Wr6wo
	DQamLiRLKXOKH2x9+bLow+Op7pHCFwTno12LJwHPSHNGG5b1O7g92RXQhL/+
X-Google-Smtp-Source: AGHT+IG7j62k82EsznkA+ks6dIjv0sMRLlj7Qah0nhXTdkbTkff7w2mrZp60WMgmi/KBfk30o9zlYg==
X-Received: by 2002:a50:9f86:0:b0:56f:c13c:4233 with SMTP id c6-20020a509f86000000b0056fc13c4233mr2708764edf.3.1712999427849;
        Sat, 13 Apr 2024 02:10:27 -0700 (PDT)
Message-ID: <0f416ad9-b326-4b43-8dbc-6b70d7c34279@googlemail.com>
Date: Sat, 13 Apr 2024 11:10:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE
To: oss-security@lists.openwall.com
From: Tobias Powalowski <tobias.powalowski@googlemail.com>
Autocrypt: addr=tobias.powalowski@googlemail.com; keydata=
 xsBNBE4j2kMBCADIc5H8FTVyhxTV1ucwPYD16xFm2ksvoIxRqUU60OJSoUIN14J9aUrpa226
 P1MDnuUnnYeOq4OEP+N1I+CyfhhdldfaXMS5weEILDrWNSYof5R3y4gHc5cqTdoxqcw8VO4n
 9WDS9bYh2y8hXOutKpij+DKmdG7TD71dBIu3pIFACsTmN990LDzTdBn1gznmBHU3qEnYy6YN
 V62t9hHTh8I3i1Qty0diLfLXhHkmEP2hdZ2hAW8qkxXPSAgqzcij6bqzXaIEtPIPZq9g5yLI
 N5jq1zprSZ7rxkjYw9nRl/C0OYWzB2Fu8h4kwK9ay+Kb7uyVs8W+13kfPp/23akLKc1nABEB
 AAHNNFRvYmlhcyBQb3dhbG93c2tpIDx0b2JpYXMucG93YWxvd3NraUBnb29nbGVtYWlsLmNv
 bT7CwNIEEwEIAIYFgmLJeDkECwkIBwkQdx32Yn7faB9HFAAAAAAAHgAgc2FsdEBub3RhdGlv
 bnMuc2VxdW9pYS1wZ3Aub3Jn3lzsTJodXa4iAHOuS+AXVbfyQcYAgueL7KMTfXCdJUIDFQgK
 BBYCAwECF4ACGwMCHgEWIQRbfj+3G38QMpocA6t3HfZift9oHwAAnccH/3shtmvo0UJ6jYNM
 V3s4GCZTvtTNMt2wPWMcN+TfByFfju1Gp+JF08IlP20jSXtxe2A3tsUt30zUVa0vFRuJwcHW
 RMx3yvT9xpIHY0N6axkV8JdibCXIy2bPU7RtxgbpWlNzdzyYVrSPqROoHfZcd8n1HGb6//m3
 MHOJnGipO7gHn+pgzyLHRkcqAaSssH4vhnd7q1fIY+Nxi0Ct9xZ+ZiHPWfvKdU89IfzAGC8H
 5kou0Kqb7cW/WUaygDIom0Rhed1aG0BVK6ZpMajEb990Pe1/X0SzPtPzLQCEC70erSJ1dRLy
 bZmK9KkYvz1MG1m8lIRxw8VFoSNiIq3nD+whSJzOwE0ETiPaQwEIALiTKWbjLeBkbyfQ3Nqp
 3tTCGfGmsfAdP5YzZtI01pFq1PVYtsCO09Sitxlo37IukDBfIp1KvOpKCAOvDQvpCIYkMehq
 C8vrjmRxYVe2wjRe9QSQ3UNbVP4pEAUUe9jj3h+EDazwNkHBZUf8ps8p2CzBtezRXhDckBqp
 cacrpvOYsR1OWzV4ARu/QS/5HDzMzY75FL5ms08v4UXAM2kjV5wNMUl0silDwEB+oej5Piht
 xGrqCGTsDMHU3McLL1aNFuMKKyZixxaHnk9kPS/xwWd/KnCjLWUV8EtfGt0b1zOwSnPnMFgZ
 K5KEx2Tr9rXYGXRW/9Qt8LltwIAM8up2BbsAEQEAAcLAvgQYAQgAcgWCYsl4OQkQdx32Yn7f
 aB9HFAAAAAAAHgAgc2FsdEBub3RhdGlvbnMuc2VxdW9pYS1wZ3Aub3Jn5EnEZyR1I6mUNjYl
 r8+ud2+SBPaGL1bNdTTpNSBovKMCGwwWIQRbfj+3G38QMpocA6t3HfZift9oHwAAVggH/1cE
 NNnXQy73l3bjfpGPlPMdP7OEPOgrmHAPnSH8hKrcjm6KMFnwansP/MRmAsphHZ6eXKzuJM2t
 Xpoe42Ikp2QQC/fC6glCU3D8HTXciNXdRUYEbYoZIXxyYx+0F4GzoJqc5hpdno/8NjpbKbFj
 WCD4bjJJ/WC2d1LPuB0mz4njMaKOlLJMMJo4oAcTWGzVEiITF/nHagSoGS6bSBxF1QE36kTh
 pz0bVKfwlxgfCwLoqVHO8QMSZ8V7S1EhN2qd2PCOx1uRA95ShACh1UggbgqGGQRgGKnuRvZ2
 R+F5fiya9va1HLXsYfCbgX5HEAG3dcLteyNHLyuJuXnK4D+BuXM=
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: less(1) with LESSOPEN mishandles \n in paths

Hi backported patch for 643:

https://gitlab.archlinux.org/archlinux/packaging/packages/less/-/commit/1d570db0c84fe95799f460526492e45e24c30ad0

Best regards

tpowa

-- 
Tobias Powalowski
Arch Linux Developer (tpowa)
https://www.archlinux.org
tpowa@archlinux.org

Archboot Developer
https://archboot.com

St. Martin-Apotheke
Herzog-Georg-Str. 25
89415 Lauingen
https://www.st-martin-apo.de
info@st-martin-apo.de

