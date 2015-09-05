X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2028" "Saturday" "5" "September" "2015" "06:07:00" "-0400" "Scott Arciszewski" "scott@arciszewski.me" "<CAPKwhwto-ZPi0o98NAF3F9FxRjiiwiwHCFYTKNSCQJrf8BRReQ@mail.gmail.com>" "67" "[oss-security] Some Wordpress Plugin Stuff" nil nil nil "9" "2015090510:07:00" "[oss-security] Some Wordpress Plugin Stuff" (number mark "U       scott@arcisz Sep  5   67/2028  " thread-indent "\"[oss-security] Some Wordpress Plugin Stuff\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30076 invoked by uid 550); 5 Sep 2015 10:54:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20290 invoked from network); 5 Sep 2015 10:07:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:date:message-id:subject:from:to:content-type;
        bh=Fr0gKRK4QZkjUTMG1DZfapoAtAw2HJo7yEuIc3fVfOo=;
        b=rWxZ2LUbLSmbXsi45XGmqeBPTBVAdZpOueQUkV4PpqBPcqMU7DU+AYADeyQwG9irvA
         N5xkB0dzrxec9O4vVX1zZ3pHvnH3ULa9Vx5KIcdizI+wQ7Hr4oEp6OL8/nHEcgx5exi6
         4vCEOywzEh2Wh6ylMGH4/rCgTs36ld5Ock0yB6yamY7qQOKmQ2J3ScYhV4AwlKvl5nY7
         GVUcqryN3kas/f9EkJdzwff5E8JLB3+0AaA4inD36/F6W9gLEmlBMDX5PvZM5BL2TEae
         liM19i2z+lg9KMVugrS6KQe5mjZM0+fWuftvKD5zd5aHlIKbQRy7JYblNtM8IOasWLAa
         maLQ==
MIME-Version: 1.0
X-Received: by 10.50.61.243 with SMTP id t19mr14408475igr.22.1441447620813;
 Sat, 05 Sep 2015 03:07:00 -0700 (PDT)
X-Google-Sender-Auth: 04NWwIcjNiEcaH_EpzkXLSEpsbY
Message-ID: <CAPKwhwto-ZPi0o98NAF3F9FxRjiiwiwHCFYTKNSCQJrf8BRReQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bdc0a4e66aaa1051efd2d21
Date: Sat, 5 Sep 2015 06:07:00 -0400
From: Scott Arciszewski <scott@arciszewski.me>
Reply-To: oss-security@lists.openwall.com
Sender: kobrasrealm@gmail.com
Subject: [oss-security] Some Wordpress Plugin Stuff
To: oss-security@lists.openwall.com

--047d7bdc0a4e66aaa1051efd2d21
Content-Type: text/plain; charset=UTF-8

Hi OSS Sec,

I took a quick glance through some Wordpress plugins tagged with security.
I don't imagine anyone would be surprised that I found vulnerabilities.

-------------------------------

SecurityMoz Security Audit

https://wordpress.org/plugins/securemoz-security-audit/

file_get_contents() + explicitly HTTP (no TLS) -> unserialize()

-------------------------------

WP Limit Login Attempts

https://wordpress.org/plugins/wp-limit-login-attempts/

Trivial SQL injection via HTTP headers.

     $ip = getip();
     $tablename = $wpdb->prefix."limit_login";
     $tablerows = $wpdb->get_results( "SELECT `login_id`,
`login_ip`,`login_attempts`,`attempt_time`,`locked_time` FROM  `$tablename`
  WHERE `login_ip` =  '$ip'  ORDER BY `login_id` DESC LIMIT 1 " );

     // ~8<~8<~8<~8<~8<~8<~8<~8<~

    function getip(){
           if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $ip = $_SERVER['REMOTE_ADDR'];
             if($ip=='::1'){
                 $ip = '127.0.0.1';
             }
        }
        return $ip;
    }

-------------------------------

I'm not sure if it's even worth assigning a CVE to any of these. Maybe the
SQLi one? I leave that decision in MITRE's capable hands.

Also, Tor Blocker (link below) uses HTTP to grab the list of IP addresses
to block. It's telling and appropriate that the person who developed a
plugin to oppose a privacy technology would fail to use TLS.

https://wordpress.org/plugins/tor-exit-nodes-blocker/

(Surely no one would ever think to hack an upstream router and MitM the
connection to block the blog administrator from their own blog or allow Tor
nodes through!)

That's all from me. I might keep poking at some of the fatter plugins to
see what I can find.

Scott Arciszewski

--047d7bdc0a4e66aaa1051efd2d21--
