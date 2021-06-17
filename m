X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2268" "Thursday" "17" "June" "2021" "17:28:01" "+0100" "Andrew Zayine" "scholarshipchile@gmail.com" nil "63" "[oss-security] New Open-Source Forensic Tool for SQLite Data Recovery" nil nil nil "6" nil nil (number mark "U       scholarshipc Jun 17   63/2268  " thread-indent "\"[oss-security] New Open-Source Forensic Tool for SQLite Data Recovery\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] New Open-Source Forensic Tool for SQLite Data Recovery" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1855 invoked by uid 550); 17 Jun 2021 16:37:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27762 invoked from network); 17 Jun 2021 16:28:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=BUSq5E2hJu/oQ9SJ5LnjH/t6nylJbtBXxCPTxvb+80U=;
        b=cPptiOQtxgORdPBi7po/ZzLEnvj8hBkStjFYHfxNUyP5QkFopn1WqP+3l6DHwXyiUP
         5iqqV222TL1s4UUWT+FkbySYriypyWRETNIZFxhd1guRAJNjSSQOzN+Wvnf9Ls3ZZcxG
         31ccddzinLrL/KZIWnnLdKFQycMbz5y7zl+zNlT1vB1zjKIdsJ1CnM6c1pWMrkMU/zcv
         oJx0Be0ZxUoKIYgdyUwAj8vPxzd03Nj16j+NLva8FEfrCNUqlXT4WgqYbh5TcWX+F1Y6
         ZIyNflV8e5fiOAp40yBI/yz8AulBd5ex+3QcwtImTABI3LzWWSTRgjSF9QJb2uWwOGx4
         yQtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=BUSq5E2hJu/oQ9SJ5LnjH/t6nylJbtBXxCPTxvb+80U=;
        b=sPA+mR1DJHvt8af1Sv228GmRClVvZXYFT25BhZqssl3yvPLcx19grjn1LX6DtlCPj1
         Ul6zz2bQF18iZLbjkF8/U9Myw75koo0JLC/sZo3ZEgoqzYrMi8yeYg46EcTq7C0Fv/5A
         jWDEvW4CkKD76v6MFzjZpZhPqv5If+tMQyrmvuGppUpE7r7NJSeMcFTsZkgjrBFwX6Ku
         Ct9iU5t43yF9GJ3ULwjimVFRJY9YxZM4W2bV8DbvVS0/tnds83VdP9IavsOSglrMFqDr
         /UgWO13s4mgSUbLsWAsTduaAxDx/UwSY2m1Xfz1An+VjJpFkQuG57bD6q/FsSAOUAeKN
         EwJw==
X-Gm-Message-State: AOAM5310DzrsqgzVyO0ZuWd6He6wC1x0q4MgUmUB4u6p+SDG5vyuEdtL
	eIdliRZivtNtI1HUg8eXQhqCVkwdg66eZVJJhrQFZ4vc
X-Google-Smtp-Source: ABdhPJwchK7hbSHXqCblkzgg+V0jGV0Wml0ECPSAjZAw349v5p2DrQe7Ir2i06wwuOnPJ8zhxP+LIkPAsfCH0aPgFjA=
X-Received: by 2002:a92:c689:: with SMTP id o9mr4358154ilg.297.1623947291984;
 Thu, 17 Jun 2021 09:28:11 -0700 (PDT)
MIME-Version: 1.0
References: <CACsGmeQJbdxMO7s_0KeRWWszjQnCirfcj_rz+NJFtfT45P1fqw@mail.gmail.com>
In-Reply-To: <CACsGmeQJbdxMO7s_0KeRWWszjQnCirfcj_rz+NJFtfT45P1fqw@mail.gmail.com>
From: Andrew Zayine <scholarshipchile@gmail.com>
Date: Thu, 17 Jun 2021 17:28:01 +0100
Message-ID: <CACsGmeQW_WKZMtCKEEXzNdxE2QKOGX_88U7-dEScg4cL93uvUg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] New Open-Source Forensic Tool for SQLite Data Recovery

Hi All,

As an editorial assistant in the International Journal of Cyber
Forensics and Advanced Threat Investigations (ISSN: 2753-9997), I
would like to advertise a new open-source tool presented recently in
the journal.

(FQLite) is a tool to find and restore deleted records in SQLite
databases. It, therefore, examines the database for entries marked as
deleted. Those entries can be recovered and displayed. It is written
with the Java programming language. The program can operate in two
different modes. It can be started from the command line (CLI mode). A
simple graphical user interface is also supported (GUI mode).

The program is able to search an SQLite database file for regular as
well as deleted records.

Official Project Webpage
---------------------------------
Check out the latest binary version (as a runnable jar-Archive) from
the official project homepage:
https://www.staff.hs-mittweida.de/~pawlaszc/fqlite/

Technical Background
------------------------------------
On overview article highlighting the technical background of FQLite
can be retrieved from

Pawlaszczyk, D., & Hummert, C. (2021). Making the Invisible Visible
=E2=80=93Techniques for Recovering Deleted SQLite Data Records. Internation=
al
Journal of Cyber Forensics and Advanced Threat Investigations, 1(1-3),
27-41. DOI: https://doi.org/10.46386/ijcfati.v1i1-3.17

Prerequisites
------------------
To run the tool you need at least a Java Runtime Environment 1.8 or higher.

Example Usage
----------------------
To run the FQLite in GUI mode the executable jar can normally be
started with a double-click on the jar-archive file. If this does not
work, since javaw is not linked correctly to .jar files, you can use
the command line as well:

$>java -jar fqlite.jar

To run the FQLite from the command line you can use the following command:

$>java -cp fqlite.jar fqlite.base.MAIN <database.db>

Licence and Author
--------------------------
Author: Dirk Pawlaszczyk pawlaszc@hs-mittweida.de

FQLite for SQLite is bi-licensed under the Mozilla Public License
Version 2, as well as the GNU General Public License Version 3 or
later.

You can modify or redistribute it under the conditions of these licenses.

Best Regards
Andrew Zayine, Ph.D., CISSP, CISM, CRISC, CDPSE, PMP
