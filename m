Received: (qmail 3081 invoked by uid 550); 15 Sep 2022 17:59:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26165 invoked from network); 15 Sep 2022 17:44:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date;
        bh=XmM+AcPuK+oKYGPYapLTi7nPqhfmDklHqxfNCohbshs=;
        b=Bzx9fJTe+RrUCg8nNNfBpZQr9YXv69I7KxyIBzNVjBw/tpUHiwRCWKWP4PVJ1cnn3b
         MVpXLPYmrMckVTFZ88vXGb4KNZ9tUXkNVhFIPPMicOA3xw/Ezyl9imV5fQNpyKdquR/g
         ciRAt4PRAnHe2vMlOR5ZxZuRCoIU6SVdFjJ1mBW1PypZWcfa14E8Zs8REQZ3wwKFvDip
         Mtld5bZyV7uSMejQEVQtOJ/pq/FQxQdYQa+fCGP3mDkmzrtR14E7uGgwxo3BcjT00Zl5
         GW40f0TVxLEsIJqmqxQRmwaC1KT4Tgh6r01bt9tG/buaijSan8Z/jEks7ft7PZNmKZrd
         HMlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=XmM+AcPuK+oKYGPYapLTi7nPqhfmDklHqxfNCohbshs=;
        b=tZRZHP9ZSuwMeG9OhyhTZ4jwPEBYhpvYL86o7zrXj410J2qhQjCHfi9cte36+z9qKs
         g5RaN2aiy0tC/Todn+OekgBzTktS1ujSsRQQrtQo+1drjSp2j/qLAzgH/VP9FNP+HR+s
         bOzaDUX7IvQzfSPT1Vr19enTgh2h7vaHNxQqw24c97Y8vWebRU8nyfoqXhjpkueH/GL+
         iOXsrHrIrWeNG9zUchKp9MdZ3P3angRsq5+KStVIPk6duW0v7c6fnvIxMHP4e/q7+Z1J
         iPGSqY+FrZ+P/3oG8a1LiKpOMzIAtS8xcwLmcNnP3WugnrPmgG7No58Wb37h6UEtfQMx
         LOPw==
X-Gm-Message-State: ACrzQf0elbUKHUTc0S36jhzL0ruYO83I/BZyB9zGdIDO9iDoq/Uyclof
	0YGAyZy+cGcGDdjQbtLR5ZInldPhQw==
X-Google-Smtp-Source: AMsMyM6cHLFPPonydif8VUluTg3Bbfgm/GKFqUelWO2LB+ohWj/CXu5RLbkIhja2rvb1VQsmjs4IhUwhxw==
X-Received: by 2002:a05:620a:2487:b0:6ce:8f6e:2747 with SMTP id i7-20020a05620a248700b006ce8f6e2747mr966438qkn.595.1663263860085;
        Thu, 15 Sep 2022 10:44:20 -0700 (PDT)
Date: Thu, 15 Sep 2022 10:44:19 -0700 (PDT)
From: Vladimir de Turckheim <vdeturckheim@gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-Id: <ff1ec491-12ab-4a37-a53f-857c4a8e5e2fn@googlegroups.com>
In-Reply-To: <4ec30d96-895c-42c9-90e7-71185b9fd05cn@googlegroups.com>
References: <4ec30d96-895c-42c9-90e7-71185b9fd05cn@googlegroups.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_983_488793117.1663263859955"
Subject: [oss-security] Fwd: Node.js security updates for all active release lines, Month
 Year

------=_Part_983_488793117.1663263859955
Content-Type: multipart/alternative; 
	boundary="----=_Part_984_318463068.1663263859955"

------=_Part_984_318463068.1663263859955
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



---------- Forwarded message ---------
From: Vladimir de Turckheim <vdeturckheim@gmail.com>
Date: Thursday, September 15, 2022 at 7:13:25 PM UTC+2
Subject: Node.js security updates for all active release lines, Month Year
To: nodejs-sec <nodejs-sec@googlegroups.com>


The Node.js project will release new versions of all supported release 
lines on or shortly after Thursday, 22nd of September, 2022 For more 
information see: 
https://nodejs.org/en/blog/vulnerability/september-2022-security-releases/

------=_Part_984_318463068.1663263859955
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmail_attr">-=
--------- Forwarded message ---------<br>From: <span dir=3D"auto">Vladimir =
de Turckheim &lt;vdeturckheim@gmail.com&gt;</span><br>Date: Thursday, Septe=
mber 15, 2022 at 7:13:25 PM UTC+2<br>Subject: Node.js security updates for =
all active release lines, Month Year<br>To: <span dir=3D"auto">nodejs-sec &=
lt;nodejs-sec@googlegroups.com&gt;</span><br></div><br><br><html-blob>The N=
ode.js project will release new versions of all supported release lines on =
or shortly after Thursday, 22nd of September, 2022 For more information see=
: <a href=3D"https://nodejs.org/en/blog/vulnerability/september-2022-securi=
ty-releases/" target=3D"_blank" rel=3D"nofollow" data-saferedirecturl=3D"ht=
tps://www.google.com/url?hl=3Den&amp;q=3Dhttps://nodejs.org/en/blog/vulnera=
bility/september-2022-security-releases/&amp;source=3Dgmail&amp;ust=3D16633=
50235572000&amp;usg=3DAOvVaw091ff4Jv5yx1xKCJc44NKe">https://nodejs.org/en/b=
log/vulnerability/september-2022-security-releases/</a><br></html-blob></di=
v>=

------=_Part_984_318463068.1663263859955--

------=_Part_983_488793117.1663263859955--
