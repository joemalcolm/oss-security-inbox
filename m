X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1065" "Wednesday" "5" "January" "2022" "18:35:17" "-0500" "Neil Griffin" "asfgriff@apache.org" nil "39" "[oss-security] CVE-2021-36739: Apache Portals: XSS vulnerability in the MVCBean JSP portlet maven archetype" nil nil nil "1" nil nil (number mark "U       asfgriff@apa Jan  5   39/1065  " thread-indent "\"[oss-security] CVE-2021-36739: Apache Portals: XSS vulnerability in the MVCBean JSP portlet maven archetype\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-36739: Apache Portals: XSS vulnerability in the MVCBean JSP portlet maven archetype" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8055 invoked by uid 550); 5 Jan 2022 23:41:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5282 invoked from network); 5 Jan 2022 23:35:42 -0000
X-Gm-Message-State: AOAM532+jv8IlM89W2AFgR0mFweBbrSqR2Z4QEPYDEC0nDjtT1Csg3Hz
	bb/pKTc4tYtG0J/menhhkmhvAEYQCT5v+lsXBiA=
X-Google-Smtp-Source: ABdhPJzSUTnz9tKY9NHup8Ai+sq7F1fBSmrP0nGWLVccixBI3rWqKtM+YfOdT43lLUQobwjckFj2nOY8hDLjyF77M+k=
X-Received: by 2002:a05:6830:1d7c:: with SMTP id l28mr39839011oti.372.1641425728358;
 Wed, 05 Jan 2022 15:35:28 -0800 (PST)
MIME-Version: 1.0
From: Neil Griffin <asfgriff@apache.org>
Date: Wed, 5 Jan 2022 18:35:17 -0500
X-Gmail-Original-Message-ID: <CAAqbB_fND52UH8km8mqoWhWbb9pAgDkt3XrBPw1iAcJ2Woax4g@mail.gmail.com>
Message-ID: <CAAqbB_fND52UH8km8mqoWhWbb9pAgDkt3XrBPw1iAcJ2Woax4g@mail.gmail.com>
To: general@portals.apache.org, pluto-user@portals.apache.org, 
	announce@apache.org, jetspeed-user@portals.apache.org, security@apache.org, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000076cf1105d4de352b"
Subject: [oss-security] CVE-2021-36739: Apache Portals: XSS vulnerability in the MVCBean JSP
 portlet maven archetype

--00000000000076cf1105d4de352b
Content-Type: text/plain; charset="UTF-8"

Severity: moderate

Description:

The "first name" and "last name" fields of the Apache Pluto 3.1.0 MVCBean
JSP portlet maven archetype are vulnerable to Cross-Site Scripting (XSS)
attacks.

Mitigation:

If a project was generated from the affected maven archetype using a
command like the following:

mvn archetype:generate \
     -DarchetypeGroupId=org.apache.portals.pluto.archetype \
     -DarchetypeArtifactId=mvcbean-jsp-portlet-archetype \
     -DarchetypeVersion=3.1.0 \
     -DgroupId=com.mycompany \
     -DartifactId=com.mycompany.my.mvcbean.jsp.portlet

Then developers must fix the generated greeting.jspx file by escaping the
rendered values submitted to the "First Name" and "Last Name" fields.

For example, change:

     ${user.firstName} ${user.lastName}!

To:

     ${mvc.encoders.html(user.firstName)}
${mvc.encoders.html(user.lastName)}!

Moving forward, all such projects should be generated from version 3.1.1 of
the Maven archetype.

--00000000000076cf1105d4de352b--
