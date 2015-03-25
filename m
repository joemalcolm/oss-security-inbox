X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1421" "Tuesday" "24" "March" "2015" "19:27:21" "-0500" "Jodie Cunningham" "jodie.cunningham@gmail.com" "<CABfY0L0rR1xe+C7CjcoUEMfO8x7VajEFUE4RaEP6WBSi+WdEPA@mail.gmail.com>" "42" "[oss-security] CVE Request: Multiple vulnerabilities in freexl 1.0.0g" nil nil nil "3" "2015032500:27:21" "[oss-security] CVE Request: Multiple vulnerabilities in freexl 1.0.0g" (number mark "        jodie.cunnin Mar 24   42/1421  " thread-indent "\"[oss-security] CVE Request: Multiple vulnerabilities in freexl 1.0.0g\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7681 invoked by uid 550); 25 Mar 2015 00:27:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7663 invoked from network); 25 Mar 2015 00:27:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=mNQFnnnraCXf34uzjVqBZOWqbO+86bW+dzxIWynJIp8=;
        b=n8PRll2CAMxCSwqmBHJsE7zufHf3YpUD8Yp/8+XhNmgNBodcPQ7X63sxAfO8iNT88D
         3h+2hHQlHUPGu8w/SHffHxPoSpg8RGn1cm19pfPb5T8v5v8Uf9ubRDUbqQZRkTkv8lKl
         4fNvQdj91724x4BE+f4Lb3IhgCszhSDTFXUSU04msK5EhkGTC/O4vJOJ0NI8QHP7rFam
         8962sQ9pnLkdC9kaYZFf2h1aHJLvtHUF6e/Jq+ooBKvoR4KBMGct7Scei0CKLosewJ82
         RisyEAGDlCb512qZmwryECf8lUxsPPlP6tdZRvcTUT9Cl9mdpg4MyAhBpyHqsuR2OftG
         HUVw==
MIME-Version: 1.0
X-Received: by 10.152.236.42 with SMTP id ur10mr5847824lac.37.1427243241383;
 Tue, 24 Mar 2015 17:27:21 -0700 (PDT)
Message-ID: <CABfY0L0rR1xe+C7CjcoUEMfO8x7VajEFUE4RaEP6WBSi+WdEPA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: cve-assign@mitre.org
Date: Tue, 24 Mar 2015 19:27:21 -0500
From: Jodie Cunningham <jodie.cunningham@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Multiple vulnerabilities in freexl 1.0.0g
To: oss-security@lists.openwall.com

Hi,

I found multiple issues in the library FreeXL 1.0.0g.
The vendor has corrected these issues in FreeXL 1.0.1 , and a diff for
the four issues is available here:
https://www.gaia-gis.it/fossil/freexl/fdiff?v1=2e167b337481dda3&v2=61618ce51a9b0c15&sbs=1

FreeXL 1.0.1 itself has been released here:
http://www.gaia-gis.it/gaia-sins/freexl-1.0.1.tar.gz

To reproduce:
./test_xl $reproducer


#1:  A flaw was found in the way FreeXL reads sectors from the input
file.  A specially crafted file could possibly result in stack
corruption near freexl.c:3752.

Reproducer: https://www.dropbox.com/s/3htzndywvtmomlx/freexl_9f74b0e8?dl=0

#2: A flaw was found in the function allocate_cells(). A specially
crafted file with invalid workbook dimensions could possibly result in
stack corruption near freexl.c:1074

Reproducer: https://www.dropbox.com/s/dcnbbntf7lp03yn/freexl_c9be2aa7?dl=0

#3: A flaw was found in the way FreeXL handles a premature EOF. A
specially crafted input file could possibly result in stack corruption
near freexl.c:1131

Reproducer: https://www.dropbox.com/s/66srfory903w6cl/freexl_d7273f72?dl=0

#4: FreeXL 1.0.0g did not properly check requests for workbook memory
allocation. A specially crafted input file could cause a Denial of
Service, or possibly write onto the stack.

Reproducer (ulimit -Sv 128000):
https://www.dropbox.com/s/gh61gzaf8jj30hj/freexl_6889d18b?dl=0


Regards,
-Jodie Cunningham
