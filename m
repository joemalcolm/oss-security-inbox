X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/18/1
Message-ID: <CANDc0NLf5N6tTgsWaKQyaivUSDaBm5076t1VHBZQgsLR5100bQ@mail.gmail.com>
Date: Fri, 18 Apr 2014 10:14:16 +0800
From: Eduardo Tongson <propolice@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request: Nagios Remote Plugin Executor <= 2.15 Remote Command Execution
Content-Type: text/plain; charset=utf-8

Details: http://seclists.org/fulldisclosure/2014/Apr/240
This is similar to CVE-2013-1362

Is there a CVE already assigned for this issue?

Fix:

--- nrpe/src/nrpe.c
+++ nrpe/src/nrpe.c
@@ -42,7 +42,7 @@ int use_ssl=FALSE;

 #define DEFAULT_COMMAND_TIMEOUT    60            /* default timeout
for execution of plugins */
 #define MAXFD                   64
-#define NASTY_METACHARS         "|`&><'\"\\[]{};"
+#define NASTY_METACHARS         "|`&><'\"\\[]{};\n"

 char    *command_name=NULL;
 char    *macro_argv[MAX_COMMAND_ARGUMENTS];
