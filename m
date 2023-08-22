Received: (qmail 28599 invoked by uid 550); 22 Aug 2023 19:54:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15613 invoked from network); 22 Aug 2023 08:05:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692691524; x=1693296324;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eEHU5iHK+SaSlLi/TDwlgOQQk2QZZtlHlM/opJ1dacM=;
        b=EvEyW5O1HZd+RGApDHKyYK/uIPobskqnm9PM9Vo7YXOSRNYNWBILYE643bb5IE2mOp
         lYEMn/40oUOuB5G6ChyaO6Sd60AkzHahIdXNcakYEuVntYTO+AlyRwKKezrCbdUKJbIE
         Ql7AaIKgACyJV9edcEpMECtnYJY6tqorJSEWGRoq4yM8lf5dCDG/O9aSxsOad7N2cK+B
         rqv+IqicF9e1xB1Cg/ftijwG3qLsa4spXDDrwWKC+M7q22LYet6HeA0y4mvY7Unr/dvK
         L0XNJB1d6JIAzVCrqvLGL28xyNvaoFVRtiG/uYplymNRdHzrdcvpjuHx1UD2aoaJSB4n
         PYyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692691524; x=1693296324;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eEHU5iHK+SaSlLi/TDwlgOQQk2QZZtlHlM/opJ1dacM=;
        b=LQ9ngJ/2Ky13QvfwyOQpwjagSOqDxVqGlYTeq63wQjYu+6mZrWpX5JzyzcK+1xfjE8
         7vln6eW4hiy8Nof4ss+R+KX+l3lvS/ztoXnK0PCknU5L3Y6iQHWAkqYha6iMv9NcTyzb
         dNhP4XpDqIVsKGcHj4q2VllpAJbmcyXKDCoxm7sfhhzRjAN9hBPQyOlSZC0QZn98MQuU
         Rm2AyduBrG0d7njcIydpmWxnM2e5tqlJQ+JETrGRv36MvkwBuGUgzkD4HFKXwZgu3qLC
         KzaFaEHM5AksnG6wDCARAbTdNd4QbjLlFozjJqOmcq5cT/Quxz2Yqscaj5l50QMk+X8h
         +TXQ==
X-Gm-Message-State: AOJu0Yywxcx0GWZypUvaxt9mPbxZhfKKzK+dWQOH+FBJtyyBOB4/zFGH
	C97ndatHXq8+xrVnd9YjDHvOXdedsge2AA==
X-Google-Smtp-Source: AGHT+IHyc4EbO3Bl0Zq+s2zJmJssCbiQ+b616DeBu00M19BAi2tFZCXQL4xPm4+Y8CTOZKsVuRohCA==
X-Received: by 2002:a5d:4b8f:0:b0:317:4bde:9e72 with SMTP id b15-20020a5d4b8f000000b003174bde9e72mr9248361wrt.10.1692691523723;
        Tue, 22 Aug 2023 01:05:23 -0700 (PDT)
From: "Simon Steiner" <simonsteiner1984@gmail.com>
To: <general@xmlgraphics.apache.org>,
	<batik-dev@xmlgraphics.apache.org>,
	<batik-users@xmlgraphics.apache.org>,
	"'Apache Security Team'" <security@apache.org>,
	<oss-security@lists.openwall.com>
Date: Tue, 22 Aug 2023 09:05:22 +0100
Message-ID: <001601d9d4cf$66c49ba0$344dd2e0$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-gb
Thread-Index: AdnUzqTJlqivUE/xT2KKfzq5XGk4Tg==
Subject: [oss-security] [CVE-2022-44730] Apache Batik information disclosure vulnerability

CVE-2022-44730:
        Apache Batik information disclosure vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        Batik 1.0 - 1.16

Description:
        Switch to empty whitelist for rhino

Mitigation:
        Users should upgrade to Batik 1.17

Credit:
        This issue was independently reported by Julien Lacour

References:
        http://xmlgraphics.apache.org/security.html
        https://issues.apache.org/jira/browse/BATIK-1347

The Apache XML Graphics team.





