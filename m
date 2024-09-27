Received: (qmail 23935 invoked by uid 550); 27 Sep 2024 05:59:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1955 invoked from network); 27 Sep 2024 01:40:00 -0000
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.msweet.org A9D61803DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msweet.org;
	s=default; t=1727401192;
	bh=shIlibvbgtfIl7MYFVxvtjCDDC04T4UKVrtC9tZWB/g=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=b+KMW4ppkDeDphhFHhX4NupFBHsO/dMgsvvdimvEK9m31hQq9B6jhjQjRpkt6KsSm
	 7dytv7WcC9q0T4p/JDSjeiUIsnTNm936bdhyw+avenorRz4AaczH41vBe0oCND203M
	 TlmzoAoV1dcAbnU1qL3kZbW8IFBwve4YKF8Q/THQ=
Content-Type: multipart/mixed;
	boundary="Apple-Mail=_D1880938-605F-43CF-9572-DDA5FD7A3B3D"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3818.100.11.1.3\))
From: Michael Sweet <msweet@msweet.org>
In-Reply-To: <e8047bef-b5b9-40c4-8027-cf140d031559@redhat.com>
Date: Thu, 26 Sep 2024 21:39:47 -0400
Cc: Solar Designer <solar@openwall.com>,
 oss-security@lists.openwall.com,
 Simone Margaritelli <evilsocket@gmail.com>
Message-Id: <3E57B980-EB14-4A05-B239-480D87512F12@msweet.org>
References: <20240926221125.GA10895@openwall.com>
 <5bf73ba2-d643-40a0-9397-65a2e56dd436@oracle.com>
 <20240926234952.GA12532@openwall.com>
 <e8047bef-b5b9-40c4-8027-cf140d031559@redhat.com>
To: Zdenek Dohnal <zdohnal@redhat.com>
X-Mailer: Apple Mail (2.3818.100.11.1.3)
Subject: Re: [oss-security] CUPS printing system vulnerabilities

--Apple-Mail=_D1880938-605F-43CF-9572-DDA5FD7A3B3D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

All,

For the _ppdCreateFromIPP code in cups/ppd-cache.c, the commits for CUPS 2.=
5 are:

    8361420cb Escape localized strings in PPDs.
    dfb947e13 Fix localization of finishing templates and general presets.
    5a4803788 PPDize preset and template names.
    bcd720b06 Refactor make-and-model code.
    96b3bdf01 Validate URIs and attribute names before putting them in the =
generated PPD.

The corresponding commits in the 2.4.x branch are:

    2abe1ba8a Fix warnings for unused vars.
    1e6ca5913 Quote PPD localized strings.
    e0630cd18 PPDize preset and template names.
    04bb2af45 Refactor make-and-model code.
    9939a70b7 Mirror IPP Everywhere printer changes from master.

I've attached a diff from v2.4.10 with these changes:


--Apple-Mail=_D1880938-605F-43CF-9572-DDA5FD7A3B3D
Content-Disposition: attachment;
	filename=ppd-cache.patch
Content-Type: application/octet-stream;
	x-unix-mode=0664;
	name="ppd-cache.patch"
Content-Transfer-Encoding: 7bit

diff --git a/cups/ppd-cache.c b/cups/ppd-cache.c
index e750fccd4..a6163a0e1 100644
--- a/cups/ppd-cache.c
+++ b/cups/ppd-cache.c
@@ -32,6 +32,7 @@
 static int	cups_connect(http_t **http, const char *url, char *resource, size_t ressize);
 static int	cups_get_url(http_t **http, const char *url, char *name, size_t namesize);
 static const char *ppd_inputslot_for_keyword(_ppd_cache_t *pc, const char *keyword);
+static void	ppd_put_string(cups_file_t *fp, cups_lang_t *lang, cups_array_t *strings, const char *ppd_option, const char *ppd_choice, const char *pwg_msgid);
 static void	pwg_add_finishing(cups_array_t *finishings, ipp_finishings_t template, const char *name, const char *value);
 static void	pwg_add_message(cups_array_t *a, const char *msg, const char *str);
 static int	pwg_compare_finishings(_pwg_finishings_t *a, _pwg_finishings_t *b);
@@ -3197,9 +3197,10 @@ _ppdCreateFromIPP2(
   ipp_t			*media_col,	/* Media collection */
 			*media_size;	/* Media size collection */
   char			make[256],	/* Make and model */
-			*model,		/* Model name */
+			*mptr,		/* Pointer into make and model */
 			ppdname[PPD_MAX_NAME];
 		    			/* PPD keyword */
+  const char		*model;		/* Model name */
   int			i, j,		/* Looping vars */
 			count,		/* Number of values */
 			bottom,		/* Largest bottom margin */
@@ -3221,8 +3222,7 @@ _ppdCreateFromIPP2(
   int			have_qdraft = 0,/* Have draft quality? */
 			have_qhigh = 0;	/* Have high quality? */
   char			msgid[256];	/* Message identifier (attr.value) */
-  const char		*keyword,	/* Keyword value */
-			*msgstr;	/* Localized string */
+  const char		*keyword;	/* Keyword value */
   cups_array_t		*strings = NULL;/* Printer strings file */
   struct lconv		*loc = localeconv();
 					/* Locale data */
@@ -3260,34 +3260,104 @@ _ppdCreateFromIPP2(
   }

  /*
-  * Standard stuff for PPD file...
+  * Get a sanitized make and model...
   */

-  cupsFilePuts(fp, "*PPD-Adobe: \"4.3\"\n");
-  cupsFilePuts(fp, "*FormatVersion: \"4.3\"\n");
-  cupsFilePrintf(fp, "*FileVersion: \"%d.%d\"\n", CUPS_VERSION_MAJOR, CUPS_VERSION_MINOR);
-  cupsFilePuts(fp, "*LanguageVersion: English\n");
-  cupsFilePuts(fp, "*LanguageEncoding: ISOLatin1\n");
-  cupsFilePuts(fp, "*PSVersion: \"(3010.000) 0\"\n");
-  cupsFilePuts(fp, "*LanguageLevel: \"3\"\n");
-  cupsFilePuts(fp, "*FileSystem: False\n");
-  cupsFilePuts(fp, "*PCFileName: \"ippeve.ppd\"\n");
+  if ((attr = ippFindAttribute(supported, "printer-make-and-model", IPP_TAG_TEXT)) != NULL && ippValidateAttribute(attr))
+  {
+   /*
+    * Sanitize the model name to only contain PPD-safe characters.
+    */

-  if ((attr = ippFindAttribute(supported, "printer-make-and-model", IPP_TAG_TEXT)) != NULL)
     strlcpy(make, ippGetString(attr, 0, NULL), sizeof(make));
+
+    for (mptr = make; *mptr; mptr ++)
+    {
+      if (*mptr < ' ' || *mptr >= 127 || *mptr == '\"')
+      {
+       /*
+	* Truncate the make and model on the first bad character...
+	*/
+
+	*mptr = '\0';
+	break;
+      }
+    }
+
+    while (mptr > make)
+    {
+     /*
+      * Strip trailing whitespace...
+      */
+
+      mptr --;
+      if (*mptr == ' ')
+	*mptr = '\0';
+    }
+
+    if (!make[0])
+    {
+     /*
+      * Use a default make and model if nothing remains...
+      */
+
+      strlcpy(make, "Unknown", sizeof(make));
+    }
+  }
   else
-    strlcpy(make, "Unknown Printer", sizeof(make));
+  {
+   /*
+    * Use a default make and model...
+    */
+
+    strlcpy(make, "Unknown", sizeof(make));
+  }

   if (!_cups_strncasecmp(make, "Hewlett Packard ", 16) || !_cups_strncasecmp(make, "Hewlett-Packard ", 16))
   {
+   /*
+    * Normalize HP printer make and model...
+    */
+
     model = make + 16;
     strlcpy(make, "HP", sizeof(make));
+
+    if (!_cups_strncasecmp(model, "HP ", 3))
+      model += 3;
+  }
+  else if ((mptr = strchr(make, ' ')) != NULL)
+  {
+   /*
+    * Separate "MAKE MODEL"...
+    */
+
+    while (*mptr && *mptr == ' ')
+      *mptr++ = '\0';
+
+    model = mptr;
   }
-  else if ((model = strchr(make, ' ')) != NULL)
-    *model++ = '\0';
   else
-    model = make;
+  {
+   /*
+    * No separate model name...
+    */

+    model = "Printer";
+  }
+
+ /*
+  * Standard stuff for PPD file...
+  */
+
+  cupsFilePuts(fp, "*PPD-Adobe: \"4.3\"\n");
+  cupsFilePuts(fp, "*FormatVersion: \"4.3\"\n");
+  cupsFilePrintf(fp, "*FileVersion: \"%d.%d\"\n", CUPS_VERSION_MAJOR, CUPS_VERSION_MINOR);
+  cupsFilePuts(fp, "*LanguageVersion: English\n");
+  cupsFilePuts(fp, "*LanguageEncoding: ISOLatin1\n");
+  cupsFilePuts(fp, "*PSVersion: \"(3010.000) 0\"\n");
+  cupsFilePuts(fp, "*LanguageLevel: \"3\"\n");
+  cupsFilePuts(fp, "*FileSystem: False\n");
+  cupsFilePuts(fp, "*PCFileName: \"ippeve.ppd\"\n");
   cupsFilePrintf(fp, "*Manufacturer: \"%s\"\n", make);
   cupsFilePrintf(fp, "*ModelName: \"%s\"\n", model);
   cupsFilePrintf(fp, "*Product: \"(%s)\"\n", model);
@@ -3317,13 +3387,13 @@ _ppdCreateFromIPP2(
   }
   cupsFilePuts(fp, "\"\n");

-  if ((attr = ippFindAttribute(supported, "printer-more-info", IPP_TAG_URI)) != NULL)
+  if ((attr = ippFindAttribute(supported, "printer-more-info", IPP_TAG_URI)) != NULL && ippValidateAttribute(attr))
     cupsFilePrintf(fp, "*APSupplies: \"%s\"\n", ippGetString(attr, 0, NULL));

-  if ((attr = ippFindAttribute(supported, "printer-charge-info-uri", IPP_TAG_URI)) != NULL)
+  if ((attr = ippFindAttribute(supported, "printer-charge-info-uri", IPP_TAG_URI)) != NULL && ippValidateAttribute(attr))
     cupsFilePrintf(fp, "*cupsChargeInfoURI: \"%s\"\n", ippGetString(attr, 0, NULL));

-  if ((attr = ippFindAttribute(supported, "printer-strings-uri", IPP_TAG_URI)) != NULL)
+  if ((attr = ippFindAttribute(supported, "printer-strings-uri", IPP_TAG_URI)) != NULL && ippValidateAttribute(attr))
   {
     http_t	*http = NULL;		/* Connection to printer */
     char	stringsfile[1024];	/* Temporary strings file */
@@ -3367,7 +3437,7 @@ _ppdCreateFromIPP2(

 	  response = cupsDoRequest(http, request, resource);

-	  if ((attr = ippFindAttribute(response, "printer-strings-uri", IPP_TAG_URI)) != NULL)
+	  if ((attr = ippFindAttribute(response, "printer-strings-uri", IPP_TAG_URI)) != NULL && ippValidateAttribute(attr))
 	    cupsFilePrintf(fp, "*cupsStringsURI %s: \"%s\"\n", keyword, ippGetString(attr, 0, NULL));

 	  ippDelete(response);
@@ -3389,10 +3459,10 @@ _ppdCreateFromIPP2(
   if (ippGetBoolean(ippFindAttribute(supported, "job-accounting-user-id-supported", IPP_TAG_BOOLEAN), 0))
     cupsFilePuts(fp, "*cupsJobAccountingUserId: True\n");

-  if ((attr = ippFindAttribute(supported, "printer-privacy-policy-uri", IPP_TAG_URI)) != NULL)
+  if ((attr = ippFindAttribute(supported, "printer-privacy-policy-uri", IPP_TAG_URI)) != NULL && ippValidateAttribute(attr))
     cupsFilePrintf(fp, "*cupsPrivacyURI: \"%s\"\n", ippGetString(attr, 0, NULL));

-  if ((attr = ippFindAttribute(supported, "printer-mandatory-job-attributes", IPP_TAG_KEYWORD)) != NULL)
+  if ((attr = ippFindAttribute(supported, "printer-mandatory-job-attributes", IPP_TAG_KEYWORD)) != NULL && ippValidateAttribute(attr))
   {
     char	prefix = '\"';		// Prefix for string

@@ -3410,7 +3480,7 @@ _ppdCreateFromIPP2(
     cupsFilePuts(fp, "\"\n");
   }

-  if ((attr = ippFindAttribute(supported, "printer-requested-job-attributes", IPP_TAG_KEYWORD)) != NULL)
+  if ((attr = ippFindAttribute(supported, "printer-requested-job-attributes", IPP_TAG_KEYWORD)) != NULL && ippValidateAttribute(attr))
   {
     char	prefix = '\"';		// Prefix for string

@@ -3973,18 +4043,16 @@ _ppdCreateFromIPP2(
 	cupsFilePrintf(fp, "*DefaultInputSlot: %s\n", ppdname);

       for (j = 0; j < (int)(sizeof(sources) / sizeof(sources[0])); j ++)
+      {
         if (!strcmp(sources[j], keyword))
 	{
 	  snprintf(msgid, sizeof(msgid), "media-source.%s", keyword);

-	  if ((msgstr = _cupsLangString(lang, msgid)) == msgid || !strcmp(msgid, msgstr))
-	    if ((msgstr = _cupsMessageLookup(strings, msgid)) == msgid)
-	      msgstr = keyword;
-
 	  cupsFilePrintf(fp, "*InputSlot %s: \"<</MediaPosition %d>>setpagedevice\"\n", ppdname, j);
-	  cupsFilePrintf(fp, "*%s.InputSlot %s/%s: \"\"\n", lang->language, ppdname, msgstr);
+	  ppd_put_string(fp, lang, strings, "InputSlot", ppdname, msgid);
 	  break;
 	}
+      }
     }
     cupsFilePuts(fp, "*CloseUI: *InputSlot\n");
   }
@@ -4010,12 +4078,9 @@ _ppdCreateFromIPP2(
       pwg_ppdize_name(keyword, ppdname, sizeof(ppdname));

       snprintf(msgid, sizeof(msgid), "media-type.%s", keyword);
-      if ((msgstr = _cupsLangString(lang, msgid)) == msgid || !strcmp(msgid, msgstr))
-	if ((msgstr = _cupsMessageLookup(strings, msgid)) == msgid)
-	  msgstr = keyword;

       cupsFilePrintf(fp, "*MediaType %s: \"<</MediaType(%s)>>setpagedevice\"\n", ppdname, ppdname);
-      cupsFilePrintf(fp, "*%s.MediaType %s/%s: \"\"\n", lang->language, ppdname, msgstr);
+      ppd_put_string(fp, lang, strings, "MediaType", ppdname, msgid);
     }
     cupsFilePuts(fp, "*CloseUI: *MediaType\n");
   }
@@ -4476,12 +4541,9 @@ _ppdCreateFromIPP2(
       pwg_ppdize_name(keyword, ppdname, sizeof(ppdname));

       snprintf(msgid, sizeof(msgid), "output-bin.%s", keyword);
-      if ((msgstr = _cupsLangString(lang, msgid)) == msgid || !strcmp(msgid, msgstr))
-	if ((msgstr = _cupsMessageLookup(strings, msgid)) == msgid)
-	  msgstr = keyword;

       cupsFilePrintf(fp, "*OutputBin %s: \"\"\n", ppdname);
-      cupsFilePrintf(fp, "*%s.OutputBin %s/%s: \"\"\n", lang->language, ppdname, msgstr);
+      ppd_put_string(fp, lang, strings, "OutputBin", ppdname, msgid);

       if ((tray_ptr = ippGetOctetString(trays, i, &tray_len)) != NULL)
       {
@@ -4600,9 +4662,6 @@ _ppdCreateFromIPP2(
         cupsArrayAdd(names, (char *)keyword);

 	snprintf(msgid, sizeof(msgid), "finishings.%d", value);
-	if ((msgstr = _cupsLangString(lang, msgid)) == msgid || !strcmp(msgid, msgstr))
-	  if ((msgstr = _cupsMessageLookup(strings, msgid)) == msgid)
-	    msgstr = keyword;

         if (value >= IPP_FINISHINGS_NONE && value <= IPP_FINISHINGS_LAMINATE)
           ppd_keyword = base_keywords[value - IPP_FINISHINGS_NONE];
@@ -4617,7 +4676,7 @@ _ppdCreateFromIPP2(
           continue;

 	cupsFilePrintf(fp, "*StapleLocation %s: \"\"\n", ppd_keyword);
-	cupsFilePrintf(fp, "*%s.StapleLocation %s/%s: \"\"\n", lang->language, ppd_keyword, msgstr);
+	ppd_put_string(fp, lang, strings, "StapleLocation", ppd_keyword, msgid);
 	cupsFilePrintf(fp, "*cupsIPPFinishings %d/%s: \"*StapleLocation %s\"\n", value, keyword, ppd_keyword);
       }

@@ -4680,9 +4739,6 @@ _ppdCreateFromIPP2(
         cupsArrayAdd(names, (char *)keyword);

 	snprintf(msgid, sizeof(msgid), "finishings.%d", value);
-	if ((msgstr = _cupsLangString(lang, msgid)) == msgid || !strcmp(msgid, msgstr))
-	  if ((msgstr = _cupsMessageLookup(strings, msgid)) == msgid)
-	    msgstr = keyword;

         if (value >= IPP_FINISHINGS_NONE && value <= IPP_FINISHINGS_LAMINATE)
           ppd_keyword = base_keywords[value - IPP_FINISHINGS_NONE];
@@ -4697,7 +4753,7 @@ _ppdCreateFromIPP2(
           continue;

 	cupsFilePrintf(fp, "*FoldType %s: \"\"\n", ppd_keyword);
-	cupsFilePrintf(fp, "*%s.FoldType %s/%s: \"\"\n", lang->language, ppd_keyword, msgstr);
+	ppd_put_string(fp, lang, strings, "FoldType", ppd_keyword, msgid);
 	cupsFilePrintf(fp, "*cupsIPPFinishings %d/%s: \"*FoldType %s\"\n", value, keyword, ppd_keyword);
       }

@@ -4768,9 +4824,6 @@ _ppdCreateFromIPP2(
         cupsArrayAdd(names, (char *)keyword);

 	snprintf(msgid, sizeof(msgid), "finishings.%d", value);
-	if ((msgstr = _cupsLangString(lang, msgid)) == msgid || !strcmp(msgid, msgstr))
-	  if ((msgstr = _cupsMessageLookup(strings, msgid)) == msgid)
-	    msgstr = keyword;

         if (value >= IPP_FINISHINGS_NONE && value <= IPP_FINISHINGS_LAMINATE)
           ppd_keyword = base_keywords[value - IPP_FINISHINGS_NONE];
@@ -4785,7 +4838,7 @@ _ppdCreateFromIPP2(
           continue;

 	cupsFilePrintf(fp, "*PunchMedia %s: \"\"\n", ppd_keyword);
-	cupsFilePrintf(fp, "*%s.PunchMedia %s/%s: \"\"\n", lang->language, ppd_keyword, msgstr);
+	ppd_put_string(fp, lang, strings, "PunchMedia", ppd_keyword, msgid);
 	cupsFilePrintf(fp, "*cupsIPPFinishings %d/%s: \"*PunchMedia %s\"\n", value, keyword, ppd_keyword);
       }

@@ -4856,9 +4909,6 @@ _ppdCreateFromIPP2(
         cupsArrayAdd(names, (char *)keyword);

 	snprintf(msgid, sizeof(msgid), "finishings.%d", value);
-	if ((msgstr = _cupsLangString(lang, msgid)) == msgid || !strcmp(msgid, msgstr))
-	  if ((msgstr = _cupsMessageLookup(strings, msgid)) == msgid)
-	    msgstr = keyword;

         if (value == IPP_FINISHINGS_TRIM)
           ppd_keyword = "Auto";
@@ -4866,7 +4916,7 @@ _ppdCreateFromIPP2(
 	  ppd_keyword = trim_keywords[value - IPP_FINISHINGS_TRIM_AFTER_PAGES];

 	cupsFilePrintf(fp, "*CutMedia %s: \"\"\n", ppd_keyword);
-	cupsFilePrintf(fp, "*%s.CutMedia %s/%s: \"\"\n", lang->language, ppd_keyword, msgstr);
+	ppd_put_string(fp, lang, strings, "CutMedia", ppd_keyword, msgid);
 	cupsFilePrintf(fp, "*cupsIPPFinishings %d/%s: \"*CutMedia %s\"\n", value, keyword, ppd_keyword);
       }

@@ -4905,12 +4955,11 @@ _ppdCreateFromIPP2(

       cupsArrayAdd(templates, (void *)keyword);

+      pwg_ppdize_name(keyword, ppdname, sizeof(ppdname));
+
       snprintf(msgid, sizeof(msgid), "finishing-template.%s", keyword);
-      if ((msgstr = _cupsLangString(lang, msgid)) == msgid || !strcmp(msgid, msgstr))
-	if ((msgstr = _cupsMessageLookup(strings, msgid)) == msgid)
-	  msgstr = keyword;

-      cupsFilePrintf(fp, "*cupsFinishingTemplate %s: \"\n", keyword);
+      cupsFilePrintf(fp, "*cupsFinishingTemplate %s: \"\n", ppdname);
       for (finishing_attr = ippFirstAttribute(finishing_col); finishing_attr; finishing_attr = ippNextAttribute(finishing_col))
       {
         if (ippGetValueTag(finishing_attr) == IPP_TAG_BEGIN_COLLECTION)
@@ -4923,7 +4972,7 @@ _ppdCreateFromIPP2(
 	}
       }
       cupsFilePuts(fp, "\"\n");
-      cupsFilePrintf(fp, "*%s.cupsFinishingTemplate %s/%s: \"\"\n", lang->language, keyword, msgstr);
+      ppd_put_string(fp, lang, strings, "cupsFinishingTemplate", ppdname, msgid);
       cupsFilePuts(fp, "*End\n");
     }

@@ -4959,9 +5008,8 @@ _ppdCreateFromIPP2(
     {
       ipp_t	*preset = ippGetCollection(attr, i);
 					/* Preset collection */
-      const char *preset_name = ippGetString(ippFindAttribute(preset, "preset-name", IPP_TAG_ZERO), 0, NULL),
+      const char *preset_name = ippGetString(ippFindAttribute(preset, "preset-name", IPP_TAG_ZERO), 0, NULL);
 					/* Preset name */
-		*localized_name;	/* Localized preset name */
       ipp_attribute_t *member;		/* Member attribute in preset */
       const char *member_name;		/* Member attribute name */
       char      	member_value[256];	/* Member attribute value */
@@ -4969,7 +5017,8 @@ _ppdCreateFromIPP2(
       if (!preset || !preset_name)
         continue;

-      cupsFilePrintf(fp, "*APPrinterPreset %s: \"\n", preset_name);
+      pwg_ppdize_name(preset_name, ppdname, sizeof(ppdname));
+      cupsFilePrintf(fp, "*APPrinterPreset %s: \"\n", ppdname);
       for (member = ippFirstAttribute(preset); member; member = ippNextAttribute(preset))
       {
         member_name = ippGetName(member);
@@ -5010,7 +5059,10 @@ _ppdCreateFromIPP2(
             fin_col = ippGetCollection(member, i);

             if ((keyword = ippGetString(ippFindAttribute(fin_col, "finishing-template", IPP_TAG_ZERO), 0, NULL)) != NULL)
-              cupsFilePrintf(fp, "*cupsFinishingTemplate %s\n", keyword);
+            {
+              pwg_ppdize_name(keyword, ppdname, sizeof(ppdname));
+              cupsFilePrintf(fp, "*cupsFinishingTemplate %s\n", ppdname);
+            }
           }
         }
         else if (!strcmp(member_name, "media"))
@@ -5037,13 +5089,13 @@ _ppdCreateFromIPP2(
           if ((keyword = ippGetString(ippFindAttribute(media_col, "media-source", IPP_TAG_ZERO), 0, NULL)) != NULL)
           {
             pwg_ppdize_name(keyword, ppdname, sizeof(ppdname));
-            cupsFilePrintf(fp, "*InputSlot %s\n", keyword);
+            cupsFilePrintf(fp, "*InputSlot %s\n", ppdname);
 	  }

           if ((keyword = ippGetString(ippFindAttribute(media_col, "media-type", IPP_TAG_ZERO), 0, NULL)) != NULL)
           {
             pwg_ppdize_name(keyword, ppdname, sizeof(ppdname));
-            cupsFilePrintf(fp, "*MediaType %s\n", keyword);
+            cupsFilePrintf(fp, "*MediaType %s\n", ppdname);
 	  }
         }
         else if (!strcmp(member_name, "print-quality"))
@@ -5088,8 +5140,9 @@ _ppdCreateFromIPP2(

       cupsFilePuts(fp, "\"\n*End\n");

-      if ((localized_name = _cupsMessageLookup(strings, preset_name)) != preset_name)
-        cupsFilePrintf(fp, "*%s.APPrinterPreset %s/%s: \"\"\n", lang->language, preset_name, localized_name);
+      snprintf(msgid, sizeof(msgid), "preset-name.%s", preset_name);
+      pwg_ppdize_name(preset_name, ppdname, sizeof(ppdname));
+      ppd_put_string(fp, lang, strings, "APPrinterPreset", ppdname, msgid);
     }
   }

@@ -5360,6 +5413,43 @@ cups_get_url(http_t     **http,		/* IO - Current HTTP connection */
 }


+/*
+ * 'ppd_put_strings()' - Write localization attributes to a PPD file.
+ */
+
+static void
+ppd_put_string(cups_file_t  *fp,	/* I - PPD file */
+               cups_lang_t  *lang,	/* I - Language */
+               cups_array_t *strings,	/* I - Strings */
+	       const char   *ppd_option,/* I - PPD option */
+	       const char   *ppd_choice,/* I - PPD choice */
+	       const char   *pwg_msgid)	/* I - PWG message ID */
+{
+  const char	*text;			/* Localized text */
+
+
+  if ((text = _cupsLangString(lang, pwg_msgid)) == pwg_msgid || !strcmp(pwg_msgid, text))
+  {
+    if ((text = _cupsMessageLookup(strings, pwg_msgid)) == pwg_msgid)
+      return;
+  }
+
+  // Add the first line of localized text...
+  cupsFilePrintf(fp, "*%s.%s %s/", lang->language, ppd_option, ppd_choice);
+  while (*text && *text != '\n')
+  {
+    // Escape ":" and "<"...
+    if (*text == ':' || *text == '<')
+      cupsFilePrintf(fp, "<%02X>", *text);
+    else
+      cupsFilePutChar(fp, *text);
+
+    text ++;
+  }
+  cupsFilePuts(fp, ": \"\"\n");
+}
+
+
 /*
  * 'pwg_add_finishing()' - Add a finishings value.
  */
@@ -5473,7 +5563,7 @@ pwg_ppdize_name(const char *ipp,	/* I - IPP keyword */
 	*end;				/* End of name buffer */


-  if (!ipp)
+  if (!ipp || !_cups_isalnum(*ipp))
   {
     *name = '\0';
     return;
@@ -5488,8 +5578,14 @@ pwg_ppdize_name(const char *ipp,	/* I - IPP keyword */
       ipp ++;
       *ptr++ = (char)toupper(*ipp++ & 255);
     }
-    else
+    else if (*ipp == '_' || *ipp == '.' || *ipp == '-' || _cups_isalnum(*ipp))
+    {
       *ptr++ = *ipp++;
+    }
+    else
+    {
+      ipp ++;
+    }
   }

   *ptr = '\0';

--Apple-Mail=_D1880938-605F-43CF-9572-DDA5FD7A3B3D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8




> On Sep 26, 2024, at 8:09=E2=80=AFPM, Zdenek Dohnal <zdohnal@redhat.com> w=
rote:
>> ...
>> https://github.com/OpenPrinting/cups/commit/8361420cbbfa2e729545c4c537c4=
9fc6322c9631
>>=20
>> "Escape localized strings in PPDs", which is similar to the last hunk in
>> "Prevent PPD generation based on invalid IPP response" CVE-2024-47175
>> libppd commit referenced by Alan above.
>>=20
>> Possibly unrelated to today's disclosure but also security-relevant is:
>>=20
>> https://github.com/OpenPrinting/cups/commit/e3467edf3be2d20a022495d9726a=
741e36768caf
>>=20
>> "Update httpConnectURI to do X.509 pinning, and use it when doing the IP=
P"
>>=20
>> Zdenek, I hope you will soon clarify which commits fix what issues, to
>> assist with distro backports.  I understand you're still busy getting
>> these in now and it's probably night time for you, so follow up when you
>> have a moment later, please.
>>=20
>> Thanks,
>>=20
>> Alexander
>>=20
> --=20
> Zdenek Dohnal
> Senior Software Engineer
> Red Hat, BRQ-TPBC
>=20

________________________
Michael Sweet


--Apple-Mail=_D1880938-605F-43CF-9572-DDA5FD7A3B3D--
