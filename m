X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1534" "Wednesday" "24" "October" "2018" "12:11:35" "-0700" "Jim Apple" "jbapple@cloudera.com" "<CAC-pSX1Lv8iv1ZKbi0++WtG-WaJSPZj-7r+o6pYBryMKxxqMNQ@mail.gmail.com>" "45" "[oss-security] Fwd: CVE-2018-11785 and CVE-2018-11792, was \"[ANNOUNCE] Apache Impala 3.0.1 release\"" nil nil nil "10" "2018102419:11:35" "[oss-security] Fwd: CVE-2018-11785 and CVE-2018-11792, was \"[ANNOUNCE] Apache Impala 3.0.1 release\"" (number mark "U       jbapple@clou Oct 24   45/1534  " thread-indent "\"[oss-security] Fwd: CVE-2018-11785 and CVE-2018-11792, was \"[ANNOUNCE] Apache Impala 3.0.1 release\"\"\n") "<CAC-pSX1E6o=VFeXSCdis+Pesa8BZBAhdP0zUZHL4W2fLWqEi4g@mail.gmail.com>" ("<CAC-pSX34B2CAAqq56EA4Hpv9uQ0uDYLeJQKgxO2LtFZW_KU0gQ@mail.gmail.com>" "<CAC-pSX1E6o=VFeXSCdis+Pesa8BZBAhdP0zUZHL4W2fLWqEi4g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22304 invoked by uid 550); 24 Oct 2018 19:27:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7515 invoked from network); 24 Oct 2018 19:12:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudera.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=YVCF/PpSSQ/1ZFfMbj2U/mKOY09ZnYHjmeahQog4wKM=;
        b=ieUCkFs47TQwppU2adE1eTf5XlRiz6sUQ+277S2IWNNXduXqz/GvI1Me2IrqywcrZW
         dh8iRFJFFxIWdYS1DY8IIgwv0952mNfVf6PM8q7qQIrG9dxXuEL5Yc5yYjzz6odUEuU8
         rJK+PpMyqqTYtxFsieAZVKS01u69uxrqfCbjQAo0Y0nTf1CLkUwy99JKkTyxH3bt9+56
         kTOxIBvQIGOcaYQdI3r7cdmWpUpSeNOpew4QI7Zw7k6oziDjtJsXuOkKYslUgPxblxCR
         yFqaIeh0HFHcLsXIOcnSzRzyO9S4wpfvnnTz4L4ffmgjHU50AULW6radKxRDP/OOAAG0
         kU9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=YVCF/PpSSQ/1ZFfMbj2U/mKOY09ZnYHjmeahQog4wKM=;
        b=epRaMtBiujsicSVykGnwb6sZjBhrTc7sy7Lahi87wqXzHusdWvH5a1BswEIfh5gpPp
         D/SkZnkHb2c+v7zBwVJ9Aj0Rs/MJoHWlcEhZ8wT99TUvsrA5f2bHOFIxSJIWHHldeNu2
         KmWgagCoScE4MD783XDPKeJ1jYRjoIZy0sVqunLStnaGxy9sgdXsKOTIpSm7GU9hXVFD
         H5ylWL7mECMNrYDQ8vRv/9rBbuxeYMPjCsSK4b67gLF6eByg+OSmwJ1zTpO4w1O7g9GZ
         K9JKEFjcZq8aYmZY9wj4KrVN53S8IPWp23HW0RMdJEbnrDtpO/fUFTqkiEA0q0D6cNIX
         cQRw==
X-Gm-Message-State: AGRZ1gLRO0yeE+SUkTR+qJOY/UVFnkR7MWEPPATTMzg3PHtBBj15D2Aq
	bA5CDOqXgv68CR4hGucbBlBYdBNCyy8kbAm9P7gBpQAdy/0=
X-Google-Smtp-Source: AJdET5cFPD/ytqPOTWR52mV1U+p5Gwd7Nu/FCyUtuXrlzOaJjVeicsT76WLhsuriJxvb5GQwtvKxcp410OKK81Hi3ho=
X-Received: by 2002:adf:93a5:: with SMTP id 34-v6mr1089311wrp.244.1540408331682;
 Wed, 24 Oct 2018 12:12:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAC-pSX34B2CAAqq56EA4Hpv9uQ0uDYLeJQKgxO2LtFZW_KU0gQ@mail.gmail.com>
 <CAC-pSX1E6o=VFeXSCdis+Pesa8BZBAhdP0zUZHL4W2fLWqEi4g@mail.gmail.com>
In-Reply-To: <CAC-pSX1E6o=VFeXSCdis+Pesa8BZBAhdP0zUZHL4W2fLWqEi4g@mail.gmail.com>
From: Jim Apple <jbapple@cloudera.com>
Date: Wed, 24 Oct 2018 12:11:35 -0700
Message-ID: <CAC-pSX1Lv8iv1ZKbi0++WtG-WaJSPZj-7r+o6pYBryMKxxqMNQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006b7cf90578fe4307"
Subject: [oss-security] Fwd: CVE-2018-11785 and CVE-2018-11792, was "[ANNOUNCE] Apache Impala
 3.0.1 release"

--0000000000006b7cf90578fe4307
Content-Type: text/plain; charset="UTF-8"

Apache Impala just released version 3.0.1 to fix CVE-2018-11785 and
CVE-2018-11792

---------- Forwarded message ---------
From: Jim Apple <jbapple@cloudera.com>
Date: Wed, Oct 24, 2018 at 12:09 PM
Subject: CVE-2018-11785 and CVE-2018-11792, was "[ANNOUNCE] Apache Impala
3.0.1 release"
To: <user@impala.apache.org>, dev@impala <dev@impala.apache.org>, Michael
Ho <kwho@cloudera.com>, Fredy Wijaya <fwijaya@cloudera.com>, <
security@apache.org>


Additionally, this release was mainly to pick up two security fixes:

CVE-2018-11785:
- Missing authorization check in Apache Impala allows a
Kerberos-authenticated but unauthorized user to inject random data into a
running query, leading to wrong results for a query

CVE-2018-11792 (IMPALA-7502):
- ALTER TABLE/VIEW RENAME required ALTER on the old
table. This may pose a potential security risk, such as having ALTER on a
table and ALL on a particular database allows a user to move the table to a
database with ALL, which will automatically grant that user with ALL
privilege on that table due to the privilege inherited from the database


On Wed, Oct 24, 2018 at 12:05 PM Jim Apple <jbapple@cloudera.com> wrote:

> The Apache Impala PMC is announcing the release of Impala 3.0.1.
>
> Impala is a high-performance distributed SQL engine.
>
> The release is available at https://impala.apache.org/downloads.html
>
> Thanks,
> Jim Apple on behalf of the Apache Impala PMC
>
>

--0000000000006b7cf90578fe4307--
