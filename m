X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1441" "Sunday" "24" "May" "2015" "07:20:32" "+0200" "0pc0deFR" "0pc0defr@gmail.com" "<CAN6thH4u+tRjwgKw0EAo6GnbctqTojku69M6c0=EvURf8Vxspw@mail.gmail.com>" "47" "[oss-security] CVE Request for WP Fastest Cache plugin" nil nil nil "5" "2015052405:20:32" "[oss-security] CVE Request for WP Fastest Cache plugin" (number mark "        0pc0defr@gma May 24   47/1441  " thread-indent "\"[oss-security] CVE Request for WP Fastest Cache plugin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3451 invoked by uid 550); 24 May 2015 05:47:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24373 invoked from network); 24 May 2015 05:20:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=hKbzgtN7lLZZXBBWG8p2xBx/gGwrrIfXLIF88k2f8yA=;
        b=eNqCxZKQz40O3/Z+qJzSXA/Dh4uFtnhb8Ucmaj50Zi4qMynfXdZesxwzBqRgJn7gca
         /RdvGGR/K+KijLYBFwMaTLYwFMZM6v6FY3YxPxfbNWPfO2Snx7HAb+JC5d1H/YpqvYl6
         kYjFqpyn9nuDgdUKAWPKRCkcNsCkInA384Gd+dpgJBXO1QUrkuoqIYL42EGSpu6F1JdW
         B+rdvqeJHndqBrrajTVSrWDwAAMz+TnR8e0q06NYXleNsQTKYs1V4edN/xsjGfNluqL5
         NOWbPmA2dSfHNF9Elr1u1gxQziu4ZdhqtFLi64+JSGNDZaw6/JxhWUtLTJTzbJIWzpEt
         vJbw==
MIME-Version: 1.0
X-Received: by 10.152.234.42 with SMTP id ub10mr12795789lac.60.1432444832247;
 Sat, 23 May 2015 22:20:32 -0700 (PDT)
Message-ID: <CAN6thH4u+tRjwgKw0EAo6GnbctqTojku69M6c0=EvURf8Vxspw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113438a062f5720516cd0da7
Cc: cve-assign@mitre.org
Date: Sun, 24 May 2015 07:20:32 +0200
From: 0pc0deFR <0pc0defr@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request for WP Fastest Cache plugin
To: OSS Securty <oss-security@lists.openwall.com>

--001a113438a062f5720516cd0da7
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

CSRF vulnerability was found in WP Fastest Cache 0.8.3.4 plugin.

The vuln is found in admin.php:
        public function optionsPageRequest(){
            if(!empty($_POST)){
                if(isset($_POST["wpFastestCachePage"])){

if(preg_match("/admin\.php\?page=3DWpFastestCacheOptions/",
$_SERVER["REQUEST_URI"])){
                        if($_POST["wpFastestCachePage"] =3D=3D "options"){
                            $this->saveOption();
                        }else if($_POST["wpFastestCachePage"] =3D=3D
"deleteCache"){
                            $this->deleteCache();
                        }else if($_POST["wpFastestCachePage"] =3D=3D
"deleteCssAndJsCache"){
                            $this->deleteCssAndJsCache();
                        }else if($_POST["wpFastestCachePage"] =3D=3D
"cacheTimeout"){
                            $this->addCacheTimeout();
                        }
                    }else{
                        die("Forbidden");
                    }
                }
            }
        }

The vuln is patched in 0.8.3.5 version.

--
Cordialement,

K=E9vin FALCOZ alias 0pc0deFR - Consultant Expert WordPress -
http://wordpress-expertise.fr

--
Regards,

K=E9vin FALCOZ aka 0pc0deFR - WordPress Expert Consultant -
http://wordpress-expertise.fr

--001a113438a062f5720516cd0da7--
