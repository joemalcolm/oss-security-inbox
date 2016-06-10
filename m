X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1377" "Friday" "10" "June" "2016" "13:56:14" "-0400" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z0qx_7spQTw9Z3vrV1hRa8so=G-1T7eegnLuMzTp0H59Q@mail.gmail.com>" "37" "[oss-security] Simple Machines Forums - PHP Object Injection" "^Date:" nil nil "6" "2016061017:56:14" "[oss-security] Simple Machines Forums - PHP Object Injection" (number mark "        scott@parago Jun 10   37/1377  " thread-indent "\"[oss-security] Simple Machines Forums - PHP Object Injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9521 invoked by uid 550); 10 Jun 2016 17:57:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7421 invoked from network); 10 Jun 2016 17:56:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to;
        bh=QokUV4kiRADaCwtRsZbtOuYtwFQNH15ap/BWLmGhpVs=;
        b=JxtCn7OkeFEcCK5YapSuw1hefeIUj6JsztzcryouvHqUDcePq32Uh8kLpX1Z/OLMHr
         rNinG/4uEUVQZSDzKoRUZI5Ff2y9DcclLPBSvnF+TqRqGoEYuWSuNcz2l84BfLyzlC2P
         W0H3FbHfBiZ+flfydhL5aFsA9LkttOHvU3PgMBmKfIeiYk8NS4yGTMKN5SgvjIGTiiPk
         tlCoc3D3se29SSUE3PkB/zOrb2DY4ldThJmdlAvZdr/HtZ2EeJO/ncl/AW6f6s8tEbgi
         nr9cVMZ3roMYg3Rk4z55sV0w0o+WMtM7eYyyOJhFmZAqy8mmG09dsbREazZd4lExRBB8
         uX1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=QokUV4kiRADaCwtRsZbtOuYtwFQNH15ap/BWLmGhpVs=;
        b=gmzwfwomga4W76ivHd5KQq5h5JEmeInOgUWgZZ4jljdQ/BBzMYl1Jj2EhoKpoguBB2
         2vep1wml2Ah0Su4Xtav0xndLYj91Xq/TkjZzKUqIwFISB3fVm8mkZi79kQ9lQ5fzU5L2
         TifPXv3yn9L5RIinlMPkFbN0BCzh5VMhMsv44RVOIeW+a0UZSgCHo+MAyQ+jcf0q91xp
         Qa79fhpM9IOCNmEr8pLUBKJoAMbpyiiEhp7qJysksB1RcblQQ2/4zgZkhA6L7rWiH+an
         XZW+hJ2tQ1SzbLjkdAf6YEezJo7SIMea3GYjaqSPWL38JCtPBoR6aLUFsyl6rI/vEXwk
         R4tQ==
X-Gm-Message-State: ALyK8tIU4eQEfz+r285eUbXXQ+blUSW/mn3sF44e3pDqdB8o3ki/OVcIe7Mi5i/w6ity7f3jk9kBtflYpiPGLQ==
MIME-Version: 1.0
X-Received: by 10.202.214.15 with SMTP id n15mr1711581oig.106.1465581374759;
 Fri, 10 Jun 2016 10:56:14 -0700 (PDT)
Message-ID: <CAKws9z0qx_7spQTw9Z3vrV1hRa8so=G-1T7eegnLuMzTp0H59Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113b04543b80d80534f041cd
Date: Fri, 10 Jun 2016 13:56:14 -0400
From: Scott Arciszewski <scott@paragonie.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Simple Machines Forums - PHP Object Injection
To: oss-security@lists.openwall.com

--001a113b04543b80d80534f041cd
Content-Type: text/plain; charset=UTF-8

I reported the following PHP Object Injection vulnerabilities to the SMF
development team on March 9, 2016:

https://github.com/SimpleMachines/SMF2.1/blob/404fd5347951652624dfb72304ee38fcab98378f/Sources/Packages.php#L863-L873

https://github.com/SimpleMachines/SMF2.1/blob/19ee85ff8761b792ea3e9ed630a947f45f93ee68/Sources/LogInOut.php#L125-L129

In the first case, you can achieve PHP Object Injection by sending
themechanges[]=serialized+object+here in the POST data of an HTTP request.

It looks like someone had attempted to find+replace all the obvious PHP
Object Injection issues (i.e. unserialize($_POST['foo'])) at some point,
but they didn't look for variables directly derived from user input.
(foreach ($_POST['foo'] as $bar)).

I've sent follow-up emails to the development team but was never notified
of any progress towards fixing it.

The first one appears to have been fixed in the release-2.1 branch, but the
other one still exists.

https://github.com/SimpleMachines/SMF2.1/blob/release-2.1/Sources/Packages.php#L872-L882
is fixed

https://github.com/SimpleMachines/SMF2.1/blob/release-2.1/Sources/LogInOut.php#L125-L129
is unfixed

That's all from me.

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>

--001a113b04543b80d80534f041cd--
