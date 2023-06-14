Received: (qmail 11706 invoked by uid 550); 14 Jun 2023 17:18:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7282 invoked from network); 14 Jun 2023 16:53:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686761622; x=1689353622;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T7VB9vW6u2GDyp3ZDHcDEuBROYv+q6jPssjPc8y0aHw=;
        b=EKa/8FC9Jv6APvIUJplUf7ASfuso9+Ba3dG8DsD8bmLj0VlQ0oY4VmcfXilnSl/1CG
         UIgX8/CeuaOPp62fRiBVXofu49CL4HlflbByhqG4M0jOe+jmQ3bP0IeX1lBxJl1bmou5
         7zSf6TR/QQ1Eb2imKTX9MSx+IGCeYZernxMYcJkVy76+j789rbyoffnboQziUyqiW8AC
         uUgwlu2sT13C5IiVLt65ggBMAGgjzpAJ3q3ykPDyOwoyj9cCP467nAWx7BwCtHTFy4b/
         W2YN4Cfi+pg+xtoWHcj7jc3MXl+rgU2cVMsGq1E8THA48QkpU82CETRyFlz+0/9/sTO/
         chXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686761622; x=1689353622;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T7VB9vW6u2GDyp3ZDHcDEuBROYv+q6jPssjPc8y0aHw=;
        b=H04QUth8Rm0Mn3SEM9DjAeud374g5MHtSBAbwRqIKYN9MaHN9FUyBwlqmshbuQ/zaR
         9cB9cHK2Ev72D53Gl8W+Krz/md2iiQvDMTB5ddccdJeYXZ+D4XZq5LGPFphVJKLqyOYk
         8pOVOdivi4t7kLUOzsIsWXtb+I5meqqNU1/f+5OlZyCT50+La1ePxPJ3e12+OdN5LlUo
         xTU0HrAmsuCTlUsvsohNGnW1uu6Hvu4lInoZoPVmM7TeRSYeRJSF2S3+uaZo2e4EsWgZ
         WYarc1X804RY7lmNRSfj0aAtbDhVsK3HV0qfGjjzAkTwlmGk0JN5jOQveu01ln0ku5XK
         oA3Q==
X-Gm-Message-State: AC+VfDywbL9S0yYFGxJfFgFdIauCKuuxGOvxdSwEZnS5IG5/xm0HdU3Q
	i9Yvubs/x3iiZcZ3NT8v6/F36lVAXPo=
X-Google-Smtp-Source: ACHHUZ7orqv6INDNN+hOdGdvodFUVwbEdJRIRGDiXcWnhiB7hWTeGH2CW40XhFcbDWUe8luzxdVPJA==
X-Received: by 2002:a17:907:6088:b0:971:484:6392 with SMTP id ht8-20020a170907608800b0097104846392mr16234568ejc.38.1686761622259;
        Wed, 14 Jun 2023 09:53:42 -0700 (PDT)
Message-ID: <b20ad75f-a368-b528-f471-aa3065483581@gmail.com>
Date: Wed, 14 Jun 2023 18:53:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Till Kamppeter <till.kamppeter@gmail.com>
To: oss-security@lists.openwall.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2023-34095: cpdb-libs: Buffer overflows via scanf

Following bug got reported to OpenPrinting's GitHub, repo cpdb-libs, as 
a private (security) issue report, which is now published:

https://github.com/OpenPrinting/cpdb-libs/security/advisories/GHSA-25j7-9gfc-f46x


Summary

There's multiple instances of buffer overflows in this package via 
improper use of scanf(3).


Details

cpdb-libs/tools/cpdb-text-frontend.c


Line 362 in 85555fb

   else if (strcmp(buf, "print-file") == 0)

              char printer_id[BUFSIZE], backend_name[BUFSIZE], 
file_path[BUFSIZE];
              scanf("%s%s%s", file_path, printer_id, backend_name);

cpdb-libs/tools/cpdb-text-frontend.c


Line 453 in 85555fb

   else if (strcmp(buf, "get-all-translations") == 0)

              char printer_id[BUFSIZE];
              char backend_name[BUFSIZE];
              scanf("%s%s", printer_id, backend_name);

cpdb-libs/cpdb/cpdb-frontend.c


Line 372 in 85555fb

   PrintBackend *cpdbCreateBackendFromFile(GDBusConnection *connection,

      char obj_path[CPDB_BSIZE];
      /* ... */
      if ((file = fopen(path, "r")) == NULL)
      /* ... */
      if (fscanf(file, "%s", obj_path) == 0)


%s does not place bounds on the allowed input sizes.


All scanf() or fscanf() calls in the cpdb-libs package which take 
strings via %s format conversion directive read these strings into 
buffers of 1024 characters of length (BUFSIZE). So one can easily 
replace all occurences of %s by %1023s (accept a maximum of 1023 
characters to leave space for terminating zero byte) in all lines 
containing scanf or fscanf, easily automated by running four times the 
command

perl -p -i -e 's/(scanf\(.*?".*?)%s/\1%1023s/' cpdb/cpdb-frontend.c 
tools/cpdb-text-frontend.c

and checking with

grep scanf */*.c


Quick test/reproducer:

Run

cpdb-text-frontend

and enter a command line (no valid command required, only arbitrary 
characters) of more than 1024 characters. without the fix you will get a 
segfault, with the fix no segfault and the overlength of the input gets 
truncated.

To test the fix in the libraries (not in cpdb-text-backend) you would 
need to create a file named /tmp/org.openprinting.Backend.CUPS with its 
first line having more than 1024 characters. Then run

CPDB_DEBUG_LOGFILE=log.txt CPDB_DEBUG_LEVEL=debug 
CPDB_BACKEND_INFO_DIR=/tmp cpdb-text-frontend

With the original libcpdb-frontend.so.2.0.0 you will get a segmentation 
fault, with the fix you will reach the command prompt of the text 
frontend (but without printer list).


The report got assigned CVE-2023-34095


The fix is committed to the GIT repository of cpdb-libs:

https://github.com/OpenPrinting/cpdb-libs/commit/f181bd1f1


Package maintainers/security teams of the operating system 
distributions, please apply the fix by then.

The fix will be included in the upcoming releases.

    Till
