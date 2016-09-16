X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4111" "Friday" "16" "September" "2016" "15:56:01" "-0400" "Chet Ramey" "chet.ramey@case.edu" "<160916195601.AA66726.SM@caleb.ins.cwru.edu>" "144" "[oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME" "^Cc:" nil nil "9" "2016091619:56:01" "[oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME" (number mark "        chet.ramey@c Sep 16  144/4111  " thread-indent "\"[oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME\"\n") "<a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>" ("<ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com>" "<a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19974 invoked by uid 550); 16 Sep 2016 22:14:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11436 invoked from network); 16 Sep 2016 19:57:33 -0000
References: <ea2555f7-dac3-948f-eef4-ff0dc624bddd@oracle.com> <a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>
In-Reply-To: Message from chet.ramey@case.edu of Fri, 16 Sep 2016 15:46:51 -0400 (id <a5ca9fe1-6a0b-246f-4f22-60470c9f48f2@case.edu>)
Message-ID: <160916195601.AA66726.SM@caleb.ins.cwru.edu>
Read-Receipt-To: chet.ramey@case.edu
MIME-Version: 1.0
Content-Type: multipart/mixed ;
	boundary="ZLr4uOg0000084dU4T"
Content-ID: <160916195601.AA66726.SM@caleb.ins.cwru.edu>
X-Junkmail-Whitelist: YES (by domain whitelist at mpv1-2015.case.edu)
Cc: chet.ramey@case.edu
Date: Fri, 16 Sep 2016 15:56:01 -0400
From: Chet Ramey <chet.ramey@case.edu>
Reply-To: oss-security@lists.openwall.com
Sender: chet <chet@caleb.ins.cwru.edu>
Subject: [oss-security] Re: CVE-2016-0634 -- bash prompt expanding $HOSTNAME
To: john.haxby@oracle.com, oss-security@lists.openwall.com

--ZLr4uOg0000084dU4T
Content-Type: text/plain ; charset="us-ascii"
Content-Disposition: inline

> > I believe the fix in parse.y is this (Chet, please correct me if I'm wrong):
> 
> Yes, that is the current fix for this.  There are other ways to do it.

Here's a patch to bash-4.3 that will fix this.

Chet


--ZLr4uOg0000084dU4T
Content-Type: text/plain ; charset="us-ascii"
Content-Disposition: attachment; filename="prompt-string-comsub.patch"

*** ../bash-4.3-patched/parse.y	2015-08-13 15:11:54.000000000 -0400
--- parse.y	2016-03-07 15:44:14.000000000 -0500
***************
*** 5259,5263 ****
    int result_size, result_index;
    int c, n, i;
!   char *temp, octal_string[4];
    struct tm *tm;  
    time_t the_time;
--- 5259,5263 ----
    int result_size, result_index;
    int c, n, i;
!   char *temp, *t_host, octal_string[4];
    struct tm *tm;  
    time_t the_time;
***************
*** 5407,5411 ****
  	    case 's':
  	      temp = base_pathname (shell_name);
! 	      temp = savestring (temp);
  	      goto add_string;
  
--- 5407,5415 ----
  	    case 's':
  	      temp = base_pathname (shell_name);
! 	      /* Try to quote anything the user can set in the file system */
! 	      if (promptvars || posixly_correct)
! 		temp = sh_backslash_quote_for_double_quotes (temp);
! 	      else
! 		temp = savestring (temp);
  	      goto add_string;
  
***************
*** 5497,5503 ****
  	    case 'h':
  	    case 'H':
! 	      temp = savestring (current_host_name);
! 	      if (c == 'h' && (t = (char *)strchr (temp, '.')))
  		*t = '\0';
  	      goto add_string;
  
--- 5501,5515 ----
  	    case 'h':
  	    case 'H':
! 	      t_host = savestring (current_host_name);
! 	      if (c == 'h' && (t = (char *)strchr (t_host, '.')))
  		*t = '\0';
+ 	      if (promptvars || posixly_correct)
+ 		/* Make sure that expand_prompt_string is called with a
+ 		   second argument of Q_DOUBLE_QUOTES if we use this
+ 		   function here. */
+ 		temp = sh_backslash_quote_for_double_quotes (t_host);
+ 	      else
+ 		temp = savestring (t_host);
+ 	      free (t_host);
  	      goto add_string;
  
*** ../bash-4.3-patched/y.tab.c	2015-08-13 15:11:54.000000000 -0400
--- y.tab.c	2016-03-07 15:44:14.000000000 -0500
***************
*** 7571,7575 ****
    int result_size, result_index;
    int c, n, i;
!   char *temp, octal_string[4];
    struct tm *tm;  
    time_t the_time;
--- 7571,7575 ----
    int result_size, result_index;
    int c, n, i;
!   char *temp, *t_host, octal_string[4];
    struct tm *tm;  
    time_t the_time;
***************
*** 7719,7723 ****
  	    case 's':
  	      temp = base_pathname (shell_name);
! 	      temp = savestring (temp);
  	      goto add_string;
  
--- 7719,7727 ----
  	    case 's':
  	      temp = base_pathname (shell_name);
! 	      /* Try to quote anything the user can set in the file system */
! 	      if (promptvars || posixly_correct)
! 		temp = sh_backslash_quote_for_double_quotes (temp);
! 	      else
! 		temp = savestring (temp);
  	      goto add_string;
  
***************
*** 7809,7815 ****
  	    case 'h':
  	    case 'H':
! 	      temp = savestring (current_host_name);
! 	      if (c == 'h' && (t = (char *)strchr (temp, '.')))
  		*t = '\0';
  	      goto add_string;
  
--- 7813,7827 ----
  	    case 'h':
  	    case 'H':
! 	      t_host = savestring (current_host_name);
! 	      if (c == 'h' && (t = (char *)strchr (t_host, '.')))
  		*t = '\0';
+ 	      if (promptvars || posixly_correct)
+ 		/* Make sure that expand_prompt_string is called with a
+ 		   second argument of Q_DOUBLE_QUOTES if we use this
+ 		   function here. */
+ 		temp = sh_backslash_quote_for_double_quotes (t_host);
+ 	      else
+ 		temp = savestring (t_host);
+ 	      free (t_host);
  	      goto add_string;
  


--ZLr4uOg0000084dU4T
Content-Type: text/plain ; charset="us-ascii"
Content-Description: Signature file
Content-Disposition: inline

``The lyf so short, the craft so long to lerne.'' - Chaucer
		 ``Ars longa, vita brevis'' - Hippocrates
Chet Ramey, UTech, CWRU    chet@case.edu    http://cnswww.cns.cwru.edu/~chet/

--ZLr4uOg0000084dU4T--

