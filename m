Received: (qmail 5554 invoked by uid 550); 15 Jul 2022 22:35:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7438 invoked from network); 15 Jul 2022 21:41:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudera.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=52+Id/OBT7yPPU521/hU0aRdNvAnF8+pOPSqBhU3abg=;
        b=pQ7Stef+wzaSSK+GsnbBxuhTaIMKu420kG6WfaSPKj/WWbI2Wq4/FUreOgQdfUCEgQ
         5TxfrJ3M8VbvgKlx0/zjvvYyO415OG9oTpfUEUW1yjjZJqQV7QupAYhBjYA4oHs3nApI
         wMqQ5fNKrDKvAAofP5o4H8HXjYttOTWTapY6NxyAvgoSiVZcI3z8u87uuptX+jpY1eMJ
         qxCmWoameRvhQEXXlam6U8xjDpXXBnrDnVvpjvudv9G99LdMryCN35ZxBNxmGDp7dsmm
         a9TqkXcknnnVLcnryptAHuhAkT/6aKhhHnjiU1ylPOYifP8hySIcexHmc5Rv0T5I+WyZ
         Ne7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=52+Id/OBT7yPPU521/hU0aRdNvAnF8+pOPSqBhU3abg=;
        b=JsVsFfb49+VP3sqSKzEh7gY45WiJEj/hjpEmH+bNjOIZHQXMReUPIjZDOh/4iUeRXd
         TlhE0z/UrRVXIboq+dI6INv4cXAQw9fxfXDi/RfOBD052lEbTzbiKFfhbZTTMsRqItbc
         Y8vDlJ3lsANSLNEdTNUKH2/6TDHjbRuBfZEdOyIjIrVfhEQ49soKpmxyRpbYeViEtJ32
         yV/VsUIPS3CPb775HRNeteG97qm1vu2ctOds3bk9Vf/t8BByJEMyIQ/jBQfGlE9dY7BG
         5Kmx72NBIxB0ReG61OcssKQoLJ0qWa8LaI+WxArGHbM3ahk72a32U3t9715dtEhrN95u
         TDvg==
X-Gm-Message-State: AJIora+XUEdWMtrCSXLDTQYxYzwNxS1N08HDvgHccjQ0RqcViXzjdvO/
	BwQBYGsno9eQAsOAKnkXaeXj+te83LnoskcyzWHhVQ==
X-Google-Smtp-Source: AGRyM1ujOeTxEverBUDbKhR6JADypVPP6BiDdznpJa3DQWzdW1TeAeYpdX33bl9W7++jPWVlvrJUJmK6mjsNJYxFuyM=
X-Received: by 2002:a17:906:14d:b0:711:ffc4:3932 with SMTP id
 13-20020a170906014d00b00711ffc43932mr15576191ejh.321.1657921258494; Fri, 15
 Jul 2022 14:40:58 -0700 (PDT)
MIME-Version: 1.0
From: Naveen Gangam <ngangam@cloudera.com>
Date: Fri, 15 Jul 2022 17:40:36 -0400
Message-ID: <CADx9buP8OWYN2zjjhHmatNvsVPwpii6ic7Dw437BP7COe8NUKQ@mail.gmail.com>
To: security <security@hive.apache.org>, dev@hive.apache.org, user@hive.apache.org, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ae256805e3dedf7c"
Subject: [oss-security] [Security] CVE-2021-34538: Security vulnerability in Hive with UDFs

--000000000000ae256805e3dedf7c
Content-Type: text/plain; charset="UTF-8"

*CVE-2021-34538*: Unauthorized access to Hive UDFs

*Severity*: Very Important

*Vendor*: The Apache Software Foundation

*Versions Affected*: This vulnerability affects all versions of Hive prior
to Hive 3.1.3. (3.1.2 or earlier).

*Version Fixed:* Hive 3.1.3, Hive 4.0 (in Beta)

*Description*: Hive's "CREATE" and "DROP" function operations does not
check for necessary authorization of involved entities in the query. It was
found that an unauthorized user can manipulate an existing UDF without
having the privileges to do so. This allowed unauthorized or
underprivileged users to drop and recreate UDFs pointing them to new jars
that could be potentially malicious.

Mitigation: This vulnerability has been addressed vio HIVE-25468 in Hive
3.1.3 release and will be included in Hive 4.0GA (Already in the beta
releases). Please upgrade to one of the releases containing the fix or
apply this patch to an existing release.

Credit: This vulnerability was discovered and reported by Hideyuki Furue.
THANK YOU !!!

--000000000000ae256805e3dedf7c--
