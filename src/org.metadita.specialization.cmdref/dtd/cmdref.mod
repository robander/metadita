<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Cmd Reference                                -->
<!--  VERSION:   1.1                                               -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an 
      appropriate system identifier 
PUBLIC "-//Metadita//ELEMENTS DITA Reference//EN"
      Delivered as file "cmdref.mod"                            -->

<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Declaring the elements and specialization         -->
<!--             attributes for Reference                          -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             March 2001                                        -->
<!--                                                               -->
<!--             (C) Copyright OASIS Open 2005, 2006.              -->
<!--             (C) Copyright IBM Corporation 2001, 2004.         -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--    2005.11.15 RDA: Removed old declaration for                -->
<!--                    referenceClasses entity                    -->
<!--    2005.11.15 RDA: Corrected LONG NAME for propdeschd         -->
<!--    2006.06.07 RDA: Added <abstract> element                   -->
<!--    2006.06.07 RDA: Make universal attributes universal        -->
<!--                      (DITA 1.1 proposal #12)                  -->
<!--    2006.11.30 RDA: Remove #FIXED from DITAArchVersion         -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                   ARCHITECTURE ENTITIES                       -->
<!-- ============================================================= -->

<!-- default namespace prefix for DITAArchVersion attribute can be
     overridden through predefinition in the document type shell   -->
<!ENTITY % DITAArchNSPrefix
                       "ditaarch"                                    >

<!-- must be instanced on each topic type                          -->
<!ENTITY % arch-atts "
             xmlns:%DITAArchNSPrefix; 
                        CDATA                              #FIXED
                       'http://dita.oasis-open.org/architecture/2005/'
             %DITAArchNSPrefix;:DITAArchVersion
                        CDATA                              '1.1'"    >


<!-- ============================================================= -->
<!--                   SPECIALIZATION OF DECLARED ELEMENTS         -->
<!-- ============================================================= -->


<!ENTITY % cmdref-info-types 
                      "%info-types;"                                 >


<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->


<!ENTITY % cmdref   "cmdref"                                   >
<!ENTITY % cmdbody     "cmdbody"                                     >
<!ENTITY % WhenToUse      "WhenToUse"                                      >
<!ENTITY % cmdresult  "cmdresult"                                  >


<!-- ============================================================= -->
<!--                    DOMAINS ATTRIBUTE OVERRIDE                 -->
<!-- ============================================================= -->


<!ENTITY included-domains ""                                         >


<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->


<!--                    LONG NAME: Reference                       -->
<!ELEMENT cmdref     ((%title;), (%titlealts;)?,
                         (%shortdesc; | %abstract;)?, 
                         (%prolog;)?, (%cmdbody;)?, (%related-links;)?, 
                         (%reference-info-types;)* )                 >
<!ATTLIST cmdref
             id         ID                               #REQUIRED
             conref     CDATA                            #IMPLIED
             %select-atts;
             %localization-atts;
             %arch-atts;
             domains    CDATA                  "&included-domains;"
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Reference Body                  -->
<!ELEMENT cmdbody       ((%WhenToUse;)?,(%cmdresult;)?,(%example;)* )                 >
<!ATTLIST cmdbody         
             %id-atts;
             %localization-atts;
             base       CDATA                            #IMPLIED
             %base-attribute-extensions;
             outputclass 
                        CDATA                            #IMPLIED    >


<!--                    LONG NAME: Reference Syntax                -->
<!ELEMENT WhenToUse        (#PCDATA)*                             >  
<!ATTLIST WhenToUse          
             spectitle  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >

<!ELEMENT cmdresult        (#PCDATA)*                             >  
<!ATTLIST cmdresult          
             spectitle  CDATA                            #IMPLIED
             %univ-atts;                                  
             outputclass 
                        CDATA                            #IMPLIED    >


<!-- ============================================================= -->
<!--                    SPECIALIZATION ATTRIBUTE DECLARATIONS      -->
<!-- ============================================================= -->


<!ATTLIST cmdref   %global-atts;  class  CDATA "- topic/topic       reference/reference cmdref/cmdref " >
<!ATTLIST cmdbody     %global-atts;  class  CDATA "- topic/body        reference/refbody cmdref/cmdbody "   >
<!ATTLIST WhenToUse      %global-atts;  class  CDATA "- topic/section     reference/section cmdref/WhenToUse "    >
<!ATTLIST cmdresult      %global-atts;  class  CDATA "- topic/section     reference/section cmdref/cmdresult "    >
 
<!-- ================== End DITA Reference  =========================== -->

