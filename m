X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3003" "Tuesday" "6" "October" "2015" "09:42:30" "+0300" "=?UTF-8?B?QW50aSBSw6Rpcw==?=" "antirais@gmail.com" "<56136D56.2000209@gmail.com>" "76" "[oss-security] Re: CVE-Request for stored WCI (a.k.a XSS) in Visual Form Builder 2.7.5 - 2.8.4" nil nil nil "10" "2015100606:42:30" "[oss-security] Re: CVE-Request for stored WCI (a.k.a XSS) in Visual Form Builder 2.7.5 - 2.8.4" (number mark "U       antirais@gma Oct  6   76/3003  " thread-indent "\"[oss-security] Re: CVE-Request for stored WCI (a.k.a XSS) in Visual Form Builder 2.7.5 - 2.8.4\"\n") "<55F67C1B.2020503@gmail.com>" ("<55F67C1B.2020503@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3715 invoked by uid 550); 6 Oct 2015 06:42:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3663 invoked from network); 6 Oct 2015 06:42:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-type:content-transfer-encoding;
        bh=wN5QoIF7Rq7mJDVjb8O1loOf9gR8I3h3clNw8DI76u4=;
        b=OkcmMvara548n9f4JZGW7XuZO8wWl9Qww/g+AMOKTJTJXefOCmjFwzqv+Cllt4p6xC
         Ktqi81mLBoatM2cKNjShSQLFOqrg1SB8PTxo3Dl2tHAy09Qfi/ogmI3YON3NbF/qJpC3
         Da+drp6jkZoYwo9HL17gW7RtMrlQ/NHMTeJ5GfAzxlCp83iuS0w/Jo5WzS2Ly5jvn+2p
         eewGAX4JWZzPksBl3SsLuUMZ2MENo7MWMuUtiAYfP4j7K458HfI0N+Bd/1CHAFw0/3gB
         FMB9O0yjCDst/dTSXdwFTcJfCG4A/dMYcTZFYKysWru+qoiUHDR+tjjJJ4b0Hqp7Z4RR
         k6dw==
X-Received: by 10.112.163.99 with SMTP id yh3mr13682837lbb.121.1444113760513;
        Mon, 05 Oct 2015 23:42:40 -0700 (PDT)
From: =?UTF-8?Q?Anti_R=c3=a4is?= <antirais@gmail.com>
To: oss-security@lists.openwall.com
References: <55F67C1B.2020503@gmail.com>
Message-ID: <56136D56.2000209@gmail.com>
Date: Tue, 6 Oct 2015 09:42:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <55F67C1B.2020503@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: CVE-Request for stored WCI (a.k.a XSS) in Visual Form Builder
 2.7.5 - 2.8.4

Hi!

Has there been any movement on this matter or is this CVE request rejected?

Anti

On 14.09.2015 10:49, Anti Räis wrote:
> Greetings,
>
> I've discovered a vulnerability in the following component and would
> like to request CVE-ID for it:
>
> Product:       Visual Form Builder
> (https://wordpress.org/plugins/visual-form-builder/)
> Version:       2.7.5 - 2.8.4 (according to the source code), fixed in 2.8.5
> Product-type:  Wordpress plugin
> Vendor:        http://vfbpro.com/
> Fixed:         2015-09-09, reported 2015-09-06
> Changelog:    
> https://plugins.trac.wordpress.org/changeset?old_path=%2Fvisual-form-builder%2Ftags%2F2.8.4&old=1244830&new_path=%2Fvisual-form-builder%2Ftags%2F2.8.5&new=1244830&sfp_email=&sfph_mail=
>
> Description:
> This plugin is used to create feedback forms. Unauthenticated user can submit 
> malicious code and it is shown to the authenticated administrator in the entries 
> page. Upon viewing the submitted entry, the attackers code executes resulting in 
> web content injection attack (WCI, a.k.a XSS).
>
>
> Vulnerability:
>
> --- start visual-form-builder/includes/class-entries-detail.php ---
> 160 case 'textarea' :
> 161 case 'html' :
> 162         ?>
> 163         <tr valign="top">
> 164                 <th scope="row"><label for="field[<?php echo $obj->id; ?>]"><?php echo stripslashes( $obj->name ); ?></label></th>
> 165                 <td style="background:#eee;border:1px solid #ddd"><?php echo wpautop( stripslashes( wp_specialchars_decode( esc_html( $obj->value ) ) ) ); ?></td>
> 166         </tr>
> 167 <?php
> 168         break;
> 169 default :
> 171         ?>
> 172         <tr valign="top">
> 173                 <th scope="row"><label for="field[<?php echo $obj->id; ?>]"><?php echo stripslashes( $obj->name ); ?></label></th>
> 174                 <td style="background:#eee;border:1px solid #ddd"><?php echo stripslashes( wp_specialchars_decode( esc_html( $obj->value ) ) ); ?></td>
> 175         </tr>
> 176 <?php
> 177         break;
> --- end visual-form-builder/includes/class-entries-detail.php ---
>
> The vulnerability lies in the following PHP code:
> <?php echo stripslashes( wp_specialchars_decode( esc_html( $obj->value ) ) ); ?>
>
> The $obj->value contains user supplied data and is escaped using the esc_html() 
> and then HTML special characters are decoded using wp_specialchars_decode() 
> which essentially neuters the esc_html(). Finally, the stripslashes() is 
> applied, which removes '\' from the given argument.
>
> Poc:
>     * Submit the following value in the form's text field:
>         \<svg/onload=alert(1)  ;
>
>     * authenticated administrator views the entry and executes the code
>         Visual Form Builder -> Entries -> (attacker's entry) -> View
>
> Disclosure timeline:
>     2015-09-06 - discovery, contacted the developers
>     2015-09-08 - sent further details and requested feedback
>     2015-09-09 - new release with the fix was released
>
> All the best,
>
> Anti Räis
>
>

