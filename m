X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1769" "Friday" "16" "September" "2016" "17:16:06" "+0100" "John Haxby" "john.haxby@oracle.com" "<ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>" "57" "[oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME" "^Cc:" nil nil "9" "2016091616:16:06" "[oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME" (number mark "        john.haxby@o Sep 16   57/1769  " thread-indent "\"[oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26513 invoked by uid 550); 16 Sep 2016 16:26:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22345 invoked from network); 16 Sep 2016 16:16:40 -0000
Message-ID: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Source-IP: aserv0022.oracle.com [141.146.126.234]
Cc: chet.ramey@case.edu
Date: Fri, 16 Sep 2016 17:16:06 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-0634 -- bash prompt expanding $HOSTNAME
To: oss-security@lists.openwall.com

Hello All,

A little while ago, one of our users discovered that by setting the
hostname to $(something unpleasant), bash would run "something
unpleasant" when it expanded \h in the prompt string.

We informed Chet (cc'd) and this has been fixed in the recently
announced bash-4.4.

I believe the fix in parse.y is this (Chet, please correct me if I'm wrong):

--------------------
@@ -5569,9 +5703,17 @@ decode_prompt_string (string)

 	    case 'h':
 	    case 'H':
-	      temp = savestring (current_host_name);
-	      if (c == 'h' && (t = (char *)strchr (temp, '.')))
+	      t_host = savestring (current_host_name);
+	      if (c == 'h' && (t = (char *)strchr (t_host, '.')))
 		*t = '\0';
+	      if (promptvars || posixly_correct)
+		/* Make sure that expand_prompt_string is called with a
+		   second argument of Q_DOUBLE_QUOTES if we use this
+		   function here. */
+		temp = sh_backslash_quote_for_double_quotes (t_host);
+	      else
+		temp = savestring (t_host);
+	      free (t_host);
 	      goto add_string;

 	    case '#':
--------------------

There is a related fix (but not one necessarily covered by CVE-2016-0634):

--------------------
@@ -5479,7 +5609,11 @@ decode_prompt_string (string)

 	    case 's':
 	      temp = base_pathname (shell_name);
-	      temp = savestring (temp);
+	      /* Try to quote anything the user can set in the file system */
+	      if (promptvars || posixly_correct)
+		temp = sh_backslash_quote_for_double_quotes (temp);
+	      else
+		temp = savestring (temp);
 	      goto add_string;

 	    case 'v':
--------------------

I appreciate that it's relatively difficult to set the hostname to a
string of your choosing but there are plenty of helpful agents that will
call sethostname(2) on your behalf.

jch
