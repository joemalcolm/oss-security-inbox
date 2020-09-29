X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1003" "Tuesday" "29" "September" "2020" "10:34:33" "-0700" "Will Barrett" "barrett.william@gmail.com" "<b8d7ab76-2bef-4c91-bc3b-a187f7ea47d5@Spark>" "24" "[oss-security] [CVE-2020-13952] Apache Superset Information Disclosure Vulnerability" nil nil nil "9" "2020092917:34:33" "[oss-security] [CVE-2020-13952] Apache Superset Information Disclosure Vulnerability" (number mark "U       barrett.will Sep 29   24/1003  " thread-indent "\"[oss-security] [CVE-2020-13952] Apache Superset Information Disclosure Vulnerability\"\n") "<5b07c9b8-fcef-4af9-bd45-e69c9376664c@Spark>" ("<5b07c9b8-fcef-4af9-bd45-e69c9376664c@Spark>") nil nil nil nil nil nil nil "[oss-security] [CVE-2020-13952] Apache Superset Information Disclosure Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20360 invoked by uid 550); 29 Sep 2020 18:10:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1334 invoked from network); 29 Sep 2020 18:02:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:references:subject:mime-version;
        bh=mcVpvBDAw4AEs3Laad/MhnaDD3IotiIGtqQVf+HjBnk=;
        b=gX5lKLYbAfYbqeGG67DbBN0yGEh7OB3PmWY49gtt7pzwCLYlman4+FVvvkDTwxxsE/
         tMEKv2LTYgDg4JQYnatAjvGNv8CLI/IGBgaDI9o0OBjjw/CLpjhOP1cXWzyjY9/J9MaM
         Y37XbjOOJtum6V1KpG57GiP2rU7nRMsZhPLnWfCt8afeILBmKKhoVmxilKiimmc1L0it
         4jD7NxWuJ13TrMCr2cO7tC997gsUNBn7BsCZzcoYTbBFR4w460ioleh8vUzb/4hX+jHE
         po3ZahAjW54Kys9+jfjkblQgRcc5SITvHQ+usujJxjyx7oryGcnU1yRNTpcpj4uVQzGi
         0AIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:references:subject
         :mime-version;
        bh=mcVpvBDAw4AEs3Laad/MhnaDD3IotiIGtqQVf+HjBnk=;
        b=pfDP5SXmlUCiQuRdB7aI5Ngj1LjWTmAnH45Teu+tDhUzxHv4GiMx31JG0PFVi6nHoO
         d4du79edNn1PCHSilY6IVEZKzRDW6QUa/rpsP2wu+j9sILcBu59or/kphL52D4UM5oXc
         htFvOzKXS6qaQQqgBcDg627bhJUPaC5A1NyPxgtehQ5QCLOX82M2kJA+2FRhl/qxwysE
         8NrCih5tJu4kxgd+bkpWK0N4bD+vExxyc/QHAdPGj4rwnNJ95s8ujOJNAoss+uiQ3m6L
         6BC3kLEMEfNItGCoz0QUsqgd4LlnwLVdXkXySrgBdnKHLtAYHYk12uhb2/7jS5hX+M54
         vbTg==
X-Gm-Message-State: AOAM532vt3H0YUMF/qEYbooZbtbfYpXrH+c/B5rOQLfBn/HhmlJGgd1F
	i+li8HGyVvfrxhIsYzJFES8SmpMfIfVvEQ==
X-Google-Smtp-Source: ABdhPJyP3/TKfqJuCbCM0PCxJadZaSeKJ3GTcxq/nuzGYOdLx4Zh3ikBuvU+kCdITRuywPr+Q8QvXA==
X-Received: by 2002:a4a:95f1:: with SMTP id p46mr5209555ooi.93.1601400880016;
        Tue, 29 Sep 2020 10:34:40 -0700 (PDT)
Date: Tue, 29 Sep 2020 10:34:33 -0700
From: Will Barrett <barrett.william@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <b8d7ab76-2bef-4c91-bc3b-a187f7ea47d5@Spark>
References: <5b07c9b8-fcef-4af9-bd45-e69c9376664c@Spark>
X-Readdle-Message-ID: b8d7ab76-2bef-4c91-bc3b-a187f7ea47d5@Spark
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="5f73702e_885e1b_26d"
Subject: [oss-security] [CVE-2020-13952] Apache Superset Information Disclosure
 Vulnerability

--5f73702e_885e1b_26d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Affected Versions: Apache Superset < 0.37.2

In the course of work on the open source project it was discovered that aut=
henticated users running queries against Hive and Presto database engines c=
ould access information via a number of templated fields including the cont=
ents of query description metadata database, the hashed version of the auth=
enticated users=E2=80=99 password, and access to connection information inc=
luding the plaintext password for the current connection. It would also be =
possible to run arbitrary methods on the database connection object for the=
 Presto or Hive connection, allowing the user to bypass security controls i=
nternal to Superset. This vulnerability is present in every Apache Superset=
 version < 0.37.2.

Will Barrett
Member of the Project Management Committee
Apache Incubator Superset

--5f73702e_885e1b_26d--

