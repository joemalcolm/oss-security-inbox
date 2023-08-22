Received: (qmail 20398 invoked by uid 550); 22 Aug 2023 19:53:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11675 invoked from network); 22 Aug 2023 08:00:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692691239; x=1693296039;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9GC+EsKoO6oSTD8r6yuGqErTYzu7UHr1oC+1TpCRAHs=;
        b=YpPXPZGT32DrOUSjyteOJzfOxabHkty7FTlDc6aSX7aw089MjBm15vKuBln8LgsXjD
         NsmNCarYgiOHfuttb3tO/JdJslH451DAOpfXqo3N1ZEggmX2Wy0UHT5XImfqnbs716vK
         wScqVs5Wv2d9q+ERSa7POJ5oOCQYRoeUQST7eZFQNpc5t0eKYdAQxfRAwH791PHOb3ly
         Tvo+Sv/SjIOagdLU36x8SbCrqFiOznB1M+XMDAZzmtViHAq7AWgt6CVk2WD1VCvZMB/G
         ScnCOTIppdVaQJzVxlzBZj1XgL2N3tFO1cgPWCwc1AlGD2P8fiFwO40Hpr+57A1VUSwd
         Xu1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692691239; x=1693296039;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9GC+EsKoO6oSTD8r6yuGqErTYzu7UHr1oC+1TpCRAHs=;
        b=K+1pa/erp/pdIoqDI1cVK7ScW4qHcqb0/copEhNfa1mH3QVS0KZVHErxmixT3TgtrN
         xsKFkL9u7ZzkP5yhyq9Nzsrfqe2ejtTgy6NQvtawopbV2nm8bM4F4jOHHN4r5aEayIlo
         xpC1GL+NBkLmDwPLL7cuzlQiSXb0clRdCg+Ry+cykwSoBya9A2QuAPNiG7lrJcGM8ZDD
         KarlO3CaSwiLCuFB45lJz5HOKBXh8L+Hj8bJ5XGlLouGY43mOj7JGeosfXeUaoGLXTjN
         7Y/s+4noe+EOdXBQdmPus+M/LcjTPYsK9+O4P/LMRgrlbte+T4PC2sLA8XMf5+7U1p85
         vJIg==
X-Gm-Message-State: AOJu0Yx6ZTWZbEeoyoVeQZkYWRrQgK2f2RuJ2JAIZ+6qUS5oYHisDVFB
	zmDM5k4QcTdQ6PkQFBfPoUk=
X-Google-Smtp-Source: AGHT+IEnv4uAJt1LuqWHFTnaowMLlNqdM/02jXMxYQXfoQszQS6xidnRDyjwm2fzlt5Q2Qg9FRj0aA==
X-Received: by 2002:a5d:4292:0:b0:313:e88d:e6d3 with SMTP id k18-20020a5d4292000000b00313e88de6d3mr5488038wrq.14.1692691239311;
        Tue, 22 Aug 2023 01:00:39 -0700 (PDT)
From: "Simon Steiner" <simonsteiner1984@gmail.com>
To: <general@xmlgraphics.apache.org>,
	<batik-dev@xmlgraphics.apache.org>,
	<batik-users@xmlgraphics.apache.org>,
	"'Apache Security Team'" <security@apache.org>,
	<oss-security@lists.openwall.com>
Date: Tue, 22 Aug 2023 09:00:38 +0100
Message-ID: <001501d9d4ce$bd31a880$3794f980$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-gb
Thread-Index: AdnUzfbLcMqd6nivSqGvQj/mfeCDlw==
Subject: [oss-security] [CVE-2022-44729] Apache Batik information disclosure vulnerability

CVE-2022-44729:
        Apache Batik information disclosure vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        Batik 1.0 - 1.16

Description:
        Block loading external resource by default

Mitigation:
        Users should upgrade to Batik 1.17

Credit:
        This issue was independently reported by nbxiglk

References:
        http://xmlgraphics.apache.org/security.html
        https://issues.apache.org/jira/browse/BATIK-1349

The Apache XML Graphics team.




