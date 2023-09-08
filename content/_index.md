---
date: "2022-10-24"
sections:

- block: about.biography
  content:
    title: Biography
    username: admin
  id: about
- block: features
  content:
    items:
    - description: 
      icon: r-project
      icon_pack: fab
      name: R
    - description: 
      icon: database
      icon_pack: fas
      name: SQL
    - description: 
      icon: q
      icon_pack: fas
      name: QGIS 
    title: Skills
- block: portfolio
  content:
    buttons:
    - name: All
      tag: '*'
    - name: R
      tag: R
    - name: QGIS
      tag: QGIS
    default_button_index: 0
    filters:
      folders:
      - project
    title: Projects
  design:
    columns: "1"
    flip_alt_rows: false
    view: showcase
  id: projects
- block: collection
  content:
    filters:
      exclude_featured: false
      folders:
      - publication
    text: |-
      {{% callout note %}}
      Quickly discover relevant content by [filtering publications](./publication/).
      {{% /callout %}}
    title: Recent Publications
  design:
    columns: "2"
    view: citation
- block: contact
  content:
    address:
      city: 
      country: 
      country_code: 
      postcode: 
      region: Sweden
      street: 
    appointment_url: 
    autolink: true
    contact_links:
    - icon: 
      icon_pack: fab
      link: 
      name: 
    - icon: 
      icon_pack: fab
      link: 
      name: 
    - icon: 
      icon_pack: fas
      link: 
      name: 
    directions: 
    email: 
    form:
      formspree:
        id: null
      netlify:
        captcha: false
      provider: netlify
    office_hours:
    
    phone: 
    subtitle: null
    text: 
    title: Contact
  design:
    columns: "2"
  id: contact
title: null
type: landing
---
