Received: (qmail 5744 invoked by uid 550); 25 Oct 2022 12:15:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19648 invoked from network); 25 Oct 2022 10:30:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HPQK9mIsuUCczftnOXK7bcuXqgaBYU/fh54YAPrNnfU=;
        b=HR6t1FCgGD+WHOarCtN6L2J54ckNrYiuGYnUjpCmW2uuVkxuRDX3vbmjrI3mgqOpZm
         qaOjL7IK4+huDyTm8JQ7rel5Bx4maffNzpD4l+RtCK9H920oFUe7tFvsC9nYKdrHPHWe
         3DNn1b6fWAhUqHZgH787CXqyrBzOD0c75b0rNJlQuSNEbwYzgMhcPoVCtGzuiWl5X+H2
         tQT1YxD1Fz3vZGRaqgvNqGB3jpCN3A3IMfb+an808g2UUQuCldrNz/urxXqMrqjRAR6U
         D+WhH30Y7603LZXUA9TEqi9ZCipK4UMyZedxEHvcR8FGvCupo61LCteZE+nItYI/rgR+
         3z+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HPQK9mIsuUCczftnOXK7bcuXqgaBYU/fh54YAPrNnfU=;
        b=HXMyMJJS3DfAV2TMfNaJEbV8BdUlH7FjNCA7r0BCVhSkhS/X6VACkc3qabdM2ETFvL
         TFI99zT+LlDcwVqLeeyBqXRIKrpFUx7uEHMrKocjjUXZ3kjELUHssWSeBD2EWd15U7TU
         Gkqz/JFHL6aOghdDhoiFVrR95zEyauf2eeyLIJ17uglfnaQIfCbynSA16vHlvzFy+Bpw
         /xb4MPUvTh4w+CqFXkIYwCBIe3dxXoxtWmr/LyS4OGZvrC8Oe4w7Wib28FbdQY2Jb3gf
         KCLaFkxOAYtZc2sb1e+XUIRhiEc75l8838u9XtuECkmIfgSjGbCE+9DJC2eBhGgSNyXt
         h6dw==
X-Gm-Message-State: ACrzQf1YBRI/1lRtdCoQTxaw0jAkejb/jreFKXg7NDT8cSdMDr1PdbsN
	J8THDYeZITIHbE1CyKRqt1w=
X-Google-Smtp-Source: AMsMyM63y2mJkHH5BDqQ+rdmO4FkGROY7U21Vorlz0N6nQOPBN1d96J5PYBWDEFy0dMYMgU9hE2f7g==
X-Received: by 2002:a05:600c:1c09:b0:3c6:c08e:886a with SMTP id j9-20020a05600c1c0900b003c6c08e886amr3280613wms.1.1666693809073;
        Tue, 25 Oct 2022 03:30:09 -0700 (PDT)
From: "Simon Steiner" <simonsteiner1984@gmail.com>
To: <general@xmlgraphics.apache.org>,
	<batik-dev@xmlgraphics.apache.org>,
	<batik-users@xmlgraphics.apache.org>,
	"'Apache Security Team'" <security@apache.org>,
	<oss-security@lists.openwall.com>
Date: Tue, 25 Oct 2022 11:30:07 +0100
Message-ID: <007301d8e85c$c16ad930$44408b90$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdjoXI8Cn8yt1FIVTcGHaFeF0BPrag==
Content-Language: en-gb
Subject: [oss-security] [CVE-2022-42890] Apache Batik information disclosure vulnerability

CVE-2022-42890:
        Apache Batik information disclosure vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        Batik 1.0 - 1.15

Description:
        Restrict what java classes can be run thru JavaScript

Mitigation:
        Users should upgrade to Batik 1.16+

Credit:
        This issue was independently reported by Y4tacker and 4ra1n of
Chaitin Tech

References:
        http://xmlgraphics.apache.org/security.html
        https://issues.apache.org/jira/browse/BATIK-1345

The Apache XML Graphics team.



