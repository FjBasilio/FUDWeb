<%@ Page Title="" Language="C#" MasterPageFile="~/Header.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="FormatoUnicoDeclaracion.aspx.cs" Inherits="FUDWeb.FUD.FormatoUnicoDeclaracion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top: 4rem; margin-bottom: 4rem;">
        <%--<h4>Formato Único de Declaración</h4>--%>
    </div>
    <div class="row" style="border-color: black; border-style: solid; margin: 3rem; padding: 3rem;">
        <div class="col-md-12">

            <!-- 0. HEADER -->
            <asp:Panel ID="PnlHeader" runat="server">
                <div class="row text-center" style="background-color: rgb(232, 225, 219); height: 13rem; margin-bottom: 0.5rem;">
                    <h4>
                        <br />
                        Comisión Ejecutiva de Atención a Víctimas
                        <br />
                        Formato Único de Declaración
                    </h4>
                </div>
                <p class="text-justify" style="font-size: 1.6rem;">
                    El presente Formato Único de Declaración es el medio para tramitar el ingreso de las personas en situación de víctima al Registro Nacional de Víctimas. La información contenida
                en el presente FUD incluye datos personales sensibles por lo que éstos serán tratados como confidenciales de conformidad con lo dispuesto en la normatividad aplicable.
                La tramitación del FUD es totalmente gratuita.
                </p>
                <div class="row">
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label ID="LblLugarSolicitud" runat="server" Text="Lugar y fecha de la solicitud:"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TxtLugarSolicitud" runat="server" placeholder="Lugar" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <asp:TextBox ID="TxtFechaSolicitud" runat="server" Placeholder="DD/MM/AAAA" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </asp:Panel>
            <!-- 0. HEADER -->


            <!-- I. DATOS DEL/LA SOLICITANTE -->
            <asp:Panel ID="PnlI" runat="server">
                <div class="row" style="background-color: lightgray">
                    <h5 class="text-center"><b>I. DATOS DEL/LA SOLICITANTE</b></h5>
                </div>
                <div class="row" style="margin-bottom: 1rem;">
                    <asp:Label ID="LblLaPresente" runat="server" Text="La presente solicitud se realiza por:"></asp:Label>
                    <asp:RadioButtonList ID="RblTipoSolicitante" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RblTipoSolicitante_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem style="margin-right: 3rem;" Value="1" Text="A. Víctima - Directa, Indirecta o Potencial"></asp:ListItem>
                        <asp:ListItem style="margin-right: 3rem;" Value="2" Text="B. Víctima a través de familiar o persona de confianza*"></asp:ListItem>
                        <asp:ListItem style="margin-right: 3rem;" Value="3" Text="C. Servidor/a público/a o autoridad**"></asp:ListItem>
                        <asp:ListItem style="margin-right: 3rem;" Value="4" Text="D. Representante legal"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <asp:Label ID="LblINombres" runat="server" Text="Nombre(s):"></asp:Label>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="TxtINombres" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="LblIPaterno" runat="server" Text="Primer Apellido:"></asp:Label>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="TxtIPaterno" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="LblIMaterno" runat="server" Text="Segundo Apellido:"></asp:Label>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="TxtIMaterno" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="LblIParentesco" runat="server" Text="Parentesco/relación afectiva*:"></asp:Label>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="TxtIParentesco" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="LblICargo" runat="server" Text="Cargo**:"></asp:Label>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="TxtICargo" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="LblIDependencia" runat="server" Text="Dependencia o institución**:"></asp:Label>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="TxtIDependencia" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-3">
                                <asp:Label ID="LblIMovil" runat="server" Text="Teléfono Móvil:"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TxtIMovil" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="col-md-3">
                                <asp:Label ID="LblIFijo" runat="server" Text="Teléfono Fijo:"></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TxtIFijo" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="LblIEmail" runat="server" Text="Correo Electrónico:"></asp:Label>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="TxtIEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Label ID="LblIOtroContacto" runat="server" Text="Otros datos de contacto:"></asp:Label>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="TxtIOtroContacto" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <hr />

            </asp:Panel>
            <!-- I. DATOS DEL/LA SOLICITANTE -->


            <!-- II. TIPO Y DATOS DE LA VÍCTIMA -->
            <asp:Panel ID="PnlII" runat="server" Visible="false">
                <div class="row" style="background-color: lightgray">
                    <h5 class="text-center"><b>II. TIPO Y DATOS DE LA VÍCTIMA</b></h5>
                </div>

                <div class="row" style="margin-bottom: 1rem;">
                    <asp:Label ID="LblTipoVictima" runat="server" Text="Tipo de Víctima:"></asp:Label>
                    <asp:RadioButtonList ID="RblTipoVictima" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                        <asp:ListItem style="margin-right: 3rem;" Value="1" Text="Directa"></asp:ListItem>
                        <asp:ListItem style="margin-right: 3rem;" Value="2" Text="Indirecta"></asp:ListItem>
                        <asp:ListItem style="margin-right: 3rem;" Value="3" Text="Potencial"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label ID="LblIINombres" runat="server" Text="Nombre(s): "></asp:Label>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="TxtIINombre" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-3">
                                <asp:Label ID="LblIIPaterno" runat="server" Text="Primer Apellido: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TxtIIPaterno" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="col-md-3">
                                <asp:Label ID="LblIIMaterno" runat="server" Text="Segundo Apellido: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TxtIIMaterno" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-3">
                                <asp:Label ID="LblIIFechaNacimiento" runat="server" Text="Fecha de Nacimiento: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TxtIIFechaNacimiento" runat="server" placeholder="DD/MM/AAAA" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="col-md-3">
                                <asp:Label ID="LblIISexo" runat="server" Text="Sexo: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:RadioButtonList ID="RblIISexo" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem style="margin-right: 3rem;" Value="1" Text="Hombre"></asp:ListItem>
                                    <asp:ListItem style="margin-right: 3rem;" Value="2" Text="Mujer"></asp:ListItem>
                                    <asp:ListItem style="margin-right: 3rem;" Value="3" Text="Otro"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-3">
                                <asp:Label ID="LblIINacionalidad" runat="server" Text="Nacionalidad: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TxtIINacionalidad" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="col-md-3">
                                <asp:Label ID="LblIICURP" runat="server" Text="CURP: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TxtIICURP" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-3">
                                <asp:Label ID="LblIILugarNacimiento" runat="server" Text="Lugar de Nacimiento: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TxtIIPais" runat="server" placeholder="a) País" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="TxtIIEntidadFederativa" runat="server" placeholder="b) Entidad Federativa" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="TxtIIMunicipio" runat="server" placeholder="c) Delegación o Municipio" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="TxtIIPoblacion" runat="server" placeholder="d) Población o comunidad" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-3">
                                <asp:Label ID="LblIIEstadoCivil" runat="server" Text="Estado Civil: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:RadioButtonList ID="RblIIEstadoCivil" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem style="margin-right: 3rem;" Value="1" Text="Soltero/a"></asp:ListItem>
                                    <asp:ListItem style="margin-right: 3rem;" Value="2" Text="Casado/a"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <asp:RadioButtonList ID="RblEstadosCiviles" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem style="margin-right: 0.5rem;" Value="1" Text="Divorciado/a"></asp:ListItem>
                                <asp:ListItem style="margin-right: 0.5rem;" Value="2" Text="Viudo/a"></asp:ListItem>
                                <asp:ListItem style="margin-right: 0.5rem;" Value="3" Text="Unión libre"></asp:ListItem>
                                <asp:ListItem style="margin-right: 0.5rem;" Value="4" Text="Concubinato"></asp:ListItem>
                                <asp:ListItem style="margin-right: 0.5rem;" Value="5" Text="Separado/a"></asp:ListItem>
                                <asp:ListItem style="margin-right: 0.5rem;" Value="6" Text="Otro"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-3">
                                <asp:Label ID="LblIICalle" runat="server" Text="Calle: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TxtIICalle" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="col-md-3">
                                        <asp:Label ID="LblIINumExt" runat="server" Text="Número Exterior: "></asp:Label>
                                    </div>
                                    <div class="col-md-9">
                                        <asp:TextBox ID="TxtIINumExt" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-3">
                                        <asp:Label ID="LblIINumInt" runat="server" Text="Número Interior: "></asp:Label>
                                    </div>
                                    <div class="col-md-9">
                                        <asp:TextBox ID="TxtIINumInt" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="col-md-3">
                                <asp:Label ID="LblIICP" runat="server" Text="Código Postal: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TxtIICP" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="col-md-3">
                                <asp:Label ID="LblIIColonia" runat="server" Text="Colonia: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:DropDownList ID="CboIIColonia" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="col-md-3">
                                <asp:Label ID="LblIILocalidad" runat="server" Text="Localidad: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TxtIILocalidad" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="col-md-3">
                                <asp:Label ID="LblIIMunicipio" runat="server" Text="Delegación / Municipio: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:DropDownList ID="CboIIMunicipio" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="col-md-3">
                                <asp:Label ID="LblIIEstado" runat="server" Text="Entidad Federativa: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TxtIIEstado" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="col-md-3">
                                <asp:Label ID="LblIITelefono" runat="server" Text="Teléfono: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TxtIITelefono" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row text-justify" style="padding: 1rem;">
                        <div class="col-md-6" style="border-color: black; border-style: solid; padding: 1rem; font-size: 1.5rem;">
                            <p>
                                NOTA: En caso de requerir que las notificaciones relacionadas con el presente Formato se realicen en un domicilio distinto al anteriormente señalado, o medio diverso al correo certificado, favor de proporcionar los datos mediante el formato (“INFORMACIÓN COMPLEMENTARIA”).
                            </p>
                        </div>
                        <div class="col-md-6" style="border-color: black; border-style: solid; padding: 1rem; font-size: 1.5rem;">
                            <p>
                                También puede acudir a las delegaciones de la CEAV, establecidas a lo largo del territorio nacional.
                            <br />
                                <br />
                                <br />
                            </p>
                        </div>
                        <asp:Label ID="LblInfo" Style="font-size: 1.2rem;" runat="server" Text="De conformidad con los Artículos 4 y 69-M, fracción V de la Ley Federal de Procedimiento Administrativo, los formatos para solicitar trámites y servicios deberán publicarse en el Diario Oficial de la Federación (DOF)."></asp:Label>
                    </div>
                </div>

                <hr />

            </asp:Panel>
            <!-- II. TIPO Y DATOS DE LA VÍCTIMA -->


            <!-- III. RELACIÓN DE LA VÍCTIMA INDIRECTA CON LA VÍCTIMA DIRECTA -->
            <asp:Panel ID="PnlIII" runat="server" Visible="false">
                <div class="row" style="background-color: lightgray; margin-bottom: 1rem;">
                    <h5 class="text-center"><b>III. RELACIÓN DE LA VÍCTIMA INDIRECTA CON LA VÍCTIMA DIRECTA</b></h5>
                </div>

                <table class="table table-bordered">
                    <thead class="thead-light">
                        <tr class="text-center">
                            <th>En caso de ser víctima indirecta, proporcione nombre completo de la víctima directa</th>
                            <th>Relación con la víctima directa.
                            <br />
                                Conteste: ¿Qué soy de la víctima directa?</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">
                                <asp:TextBox ID="TxtIIIVictima1" CssClass="form-control" Placeholder="1." runat="server"></asp:TextBox>
                            </th>
                            <td>
                                <asp:TextBox ID="TxtIIIParentesco1" CssClass="form-control" Placeholder="" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">
                                <asp:TextBox ID="TxtIIIVictima2" CssClass="form-control" Placeholder="2." runat="server"></asp:TextBox></th>
                            <td>
                                <asp:TextBox ID="TxtIIIParentesco2" CssClass="form-control" Placeholder="" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">
                                <asp:TextBox ID="TxtIIIVictima3" CssClass="form-control" Placeholder="3." runat="server"></asp:TextBox></th>
                            <td>
                                <asp:TextBox ID="TxtIIIParentesco3" CssClass="form-control" Placeholder="" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <hr />

            </asp:Panel>
            <!-- III. RELACIÓN DE LA VÍCTIMA INDIRECTA CON LA VÍCTIMA DIRECTA -->


            <!-- IV. IDENTIFICACIÓN DE LA VÍCTIMA -->
            <asp:Panel ID="PnlIV" runat="server" Visible="false">
                <div class="row">
                    <div class="col-md-3" style="border-color: black; border-style: solid;">
                        <div class="row text-center" style="background-color: lightgray; font-size: 1.6rem;">
                            <b>
                                <asp:Label ID="LblIV" runat="server" Text="IV. IDENTIFICACIÓN DE LA VÍCTIMA"></asp:Label></b>
                        </div>
                        <div>
                            <p class="text-justify" style="font-size: 1.5rem;">
                                Se deberá anexar al presente Formato, copia de la
                            identificación de la víctima. En caso de manifestar no
                            contar con ella en este momento, la identificación
                            deberá ser remitida a la Comisión Ejecutiva de
                            Atención a Víctimas con posterioridad.
                            </p>
                            <br />
                        </div>
                        <div class="row" style="background-color: lightgray; font-size: 1.4rem;">
                            <div class="col-md-8">
                                <asp:Label ID="LblIdentificacion" runat="server" Text="¿Presenta identificación?"></asp:Label>
                            </div>
                            <div class="col-md-4">
                                <asp:RadioButtonList ID="RblIdentificacion" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem style="margin-right: 0.5rem;" Value="0" Text="Sí"></asp:ListItem>
                                    <asp:ListItem style="margin-right: 0.5rem;" Value="1" Text="No"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9" style="font-size: 1.5rem;">
                        <asp:RadioButtonList ID="RblIndentificacion" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">
                            <asp:ListItem Value="1" Text="Cartilla del servicio militar"></asp:ListItem>
                            <asp:ListItem Value="2" Text="Credencial oficial expedida por el IMSS o ISSSTE"></asp:ListItem>
                            <asp:ListItem Value="3" Text="Tarjeta de residencia temporal"></asp:ListItem>
                            <asp:ListItem Value="4" Text="Pasaporte"></asp:ListItem>
                            <asp:ListItem Value="5" Text="Certificado o constancia de estudios"></asp:ListItem>
                            <asp:ListItem Value="6" Text="Tarjeta de residencia permanente"></asp:ListItem>
                            <asp:ListItem Value="7" Text="Cédula profesional"></asp:ListItem>
                            <asp:ListItem Value="8" Text="Constancia de residencia expedida por autoridad local"></asp:ListItem>
                            <asp:ListItem Value="9" Text="Credencial de elector"></asp:ListItem>
                            <asp:ListItem Value="10" Text="Otro documento oficial"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:TextBox ID="TxtIVOtro" runat="server" CssClass="form-control" Enabled="false" placeholder="Indique cuál"></asp:TextBox>

                        <div class="row">
                            <div class="col-md-4">
                                <b>
                                    <asp:Label ID="LblIVNumDcto" runat="server" Text="Número del documento probatorio:"></asp:Label></b>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="TxtIVNumDcto" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>

                <hr />

            </asp:Panel>
            <!-- IV. IDENTIFICACIÓN DE LA VÍCTIMA -->


            <!-- V. LUGAR Y FECHA DE LOS HECHOS -->
            <asp:Panel ID="PnlV" runat="server" Visible="false">
                <div class="row" style="background-color: lightgray">
                    <h5 class="text-center"><b>V. LUGAR Y FECHA DE LOS HECHOS</b></h5>
                </div>
                <div class="row" style="margin-top: 1rem; margin-bottom: 1rem;">
                    <div class="col-md-4">
                        <div class="col-md-3">
                            <asp:Label ID="LblVCalle" runat="server" Text="Calle: "></asp:Label>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TxtVCalle" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-3">
                            <asp:Label ID="LblVNumExt" runat="server" Text="Núm. Exterior: "></asp:Label>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TxtVNumExt" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-3">
                            <asp:Label ID="LblNumInt" runat="server" Text="Núm. Interior: "></asp:Label>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TxtNumInt" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 1rem;">
                    <div class="col-md-4">
                        <div class="col-md-3">
                            <asp:Label ID="LblVCP" runat="server" Text="Código Postal: "></asp:Label>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TxtVCP" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="col-md-3">
                            <asp:Label ID="LblVColonia" runat="server" Text="Colonia: "></asp:Label>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TxtVColonia" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 1rem;">
                    <div class="col-md-4">
                        <div class="col-md-3">
                            <asp:Label ID="LblVLocalidad" runat="server" Text="Localidad: "></asp:Label>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TxtVLocalidad" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="col-md-3">
                            <asp:Label ID="LblVMunicipio" runat="server" Text="Delegación o municipio: "></asp:Label>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TxtVMunicipio" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 1rem;">
                    <div class="col-md-4">
                        <div class="col-md-3">
                            <asp:Label ID="LblVEntidadFederativa" runat="server" Text="Entidad Federativa: "></asp:Label>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TxtVEntidadFederativa" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="col-md-3">
                            <asp:Label ID="LblVFecha" runat="server" Text="Fecha: "></asp:Label>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TxtVFecha" runat="server" placeholder="DD/MM/AAAA" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-bottom: 1rem;">
                    <div id="Vleft" class="col-md-3" style="border-color: black; border-style: solid; background-color: lightgray; padding-top: 1rem;">
                        <p class="text-justify">
                            En caso de no conocer todos los datos sobre el
                            lugar donde ocurrieron los hechos victimizantes,
                            favor de proporcionar los que conozca y utilice esta
                            casilla para agregar otros datos de ubicación
                        </p>
                    </div>
                    <div id="Vright" runat="server" class="col-md-9">
                        <asp:TextBox ID="TxtVExtraInfo" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row" style="background-color: lightgray;">
                    <h5 class="text-center"><b>RELATO DE LOS HECHOS</b></h5>
                </div>
                <div class="row">
                    <p class="text-justify" style="font-size: 1.5rem;">
                        Por favor relate las circunstancias de modo, tiempo y lugar, antes, durante y después de los hechos victimizantes. En caso de contar con alguna constancia
                        o documento ministerial, jurisdiccional o de organismos nacionales o internacionales de derechos humanos en donde se dé cuenta del mismo, anexarlo al
                        presente formato. En caso de que los hechos victimizantes atenten contra derechos colectivos, favor de referirlo.
                    </p>
                </div>
                <div class="row">
                    <asp:TextBox ID="VTxtRelato" runat="server" Height="350px" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </div>

                <div class="row text-justify" style="padding: 1rem;">
                    <div class="col-md-6" style="border-color: black; border-style: solid; padding: 1rem; font-size: 1.5rem;">
                        <p>
                            NOTA: En caso de requerir más espacio para relatar los hechos delictivos o la violación a
                            derechos humanos, por favor utilice el formato (“INFORMACIÓN COMPLEMENTARIA”)
                        </p>
                    </div>
                    <div class="col-md-6" style="border-color: black; border-style: solid; padding: 1rem; font-size: 1.5rem;">
                        <p>
                            También puede acudir a las delegaciones de la CEAV, establecidas a lo largo del territorio nacional.
                            <br />
                            <br />
                        </p>
                    </div>
                </div>

                <hr />

            </asp:Panel>
            <!-- V. LUGAR Y FECHA DE LOS HECHOS -->


            <!-- VI. OBSERVACIONES PRELIMINARES DEL/LA SERVIDOR/A PÚBLICO/A O AUTORIDAD QUE LLENA EL FORMATO -->
            <asp:Panel ID="PnlVI" runat="server" Visible="false">
                <div class="row" style="background-color: lightgray">
                    <h5 class="text-center"><b>VI. OBSERVACIONES PRELIMINARES DEL/LA SERVIDOR/A PÚBLICO/A O AUTORIDAD QUE LLENA EL FORMATO</b></h5>
                </div>

                <div class="row" style="margin-bottom: 1rem;">
                    <asp:Label ID="VILblTipoDano" runat="server" Text="Tipo de daño sufrido: "></asp:Label>
                    <asp:CheckBoxList ID="ChklTipoDano" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                        <asp:ListItem style="margin-right: 3rem;" Value="1" Text="Físico"></asp:ListItem>
                        <asp:ListItem style="margin-right: 3rem;" Value="2" Text="Psicológico"></asp:ListItem>
                        <asp:ListItem style="margin-right: 3rem;" Value="3" Text="Patrimonial"></asp:ListItem>
                        <asp:ListItem style="margin-right: 3rem;" Value="4" Text="Sexual"></asp:ListItem>
                        <asp:ListItem style="margin-right: 3rem;" Value="5" Text="Otro"></asp:ListItem>
                    </asp:CheckBoxList>
                </div>

                <div class="row">
                    <b>
                        <asp:Label ID="LblVIAutoridades" runat="server" Text="Este campo es para uso exclusivo de las autoridades en el caso de que participen con la víctima en el llenado del FUD:"></asp:Label></b>
                    <asp:TextBox ID="VITxtAutoridades" runat="server" Height="350px" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    <asp:Label ID="VILblNota" runat="server" Text="<b>NOTA</b>: En caso de requerir más espacio para aportar observaciones de la autoridad que llena el FUD por favor utilice el formato (“INFORMACIÓN COMPLEMENTARIA”)"></asp:Label>
                </div>

                <hr />

            </asp:Panel>
            <!-- VI. OBSERVACIONES PRELIMINARES DEL/LA SERVIDOR/A PÚBLICO/A O AUTORIDAD QUE LLENA EL FORMATO -->


            <!-- VII. AUTORIDADES QUE HAN CONOCIDO DE LOS HECHOS -->
            <asp:Panel ID="PnlVII" runat="server" Visible="false">
                <div class="row" style="background-color: lightgray">
                    <h5 class="text-center"><b>VII. AUTORIDADES QUE HAN CONOCIDO DE LOS HECHOS</b></h5>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <b>
                            <asp:Label ID="VIILblInv" runat="server" Text="INVESTIGACIÓN MINISTERIAL"></asp:Label></b>
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="VIILblDenuncio" runat="server" Text="¿Denunció ante el Ministerio Público?"></asp:Label>
                        <asp:RadioButtonList ID="VIIRblDenuncio" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="1" style="margin-right: 3rem;" Text="Sí"></asp:ListItem>
                            <asp:ListItem Value="2" style="margin-right: 3rem;" Text="No"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-md-3">
                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label ID="VIILblFecha" runat="server" Text="Fecha: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="VIITxtFecha" runat="server" CssClass="form-control" placeholder="DD/MM/AAAA"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="VIILblIMCompetencia" runat="server" Text="Competencia: "></asp:Label>
                        <asp:RadioButtonList ID="VIIRblIMCompetencia" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="1" style="margin-right: 3rem;" Text="Federal"></asp:ListItem>
                            <asp:ListItem Value="2" style="margin-right: 3rem;" Text="Local"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label ID="VIILblIMEntFed" runat="server" Text="Entidad Federativa: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="VIITxtIMEntFed" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-1">
                        <asp:Label ID="VIILblIMDelito" runat="server" Text="Delito: "></asp:Label>
                    </div>
                    <div class="col-md-11">
                        <asp:TextBox ID="VIITxtIMDelito" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label ID="VIILblAgenciaMP" runat="server" Text="Agencia MP*: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="VIITxtAgenciaMP" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label ID="VIILblAP" runat="server" Text="A. P./C. I./A. C.**: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="VIITxtAP" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label ID="VIILblEdoInv" runat="server" Text="Estado de la Investigación: "></asp:Label>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="VIITxtEdoInv" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <p class="text-right">
                    <b>*MP = Ministerio Público. **A. P. = Averiguación previa; C. I.= Carpeta de investigación, y A. C. = Acta circunstanciada.</b>
                </p>
                <hr />
                <div class="row">
                    <div class="col-md-3">
                        <b>
                            <asp:Label ID="Label1" runat="server" Text="PROCESO JUDICIAL"></asp:Label></b>
                    </div>
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-4">
                                <asp:Label ID="VIILblFechaIPJ" runat="server" Text="Fecha de inicio del proceso judicial"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="VIITxtFechaIPJ" runat="server" CssClass="form-control" placeholder="DD/MM/AAAA"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="VIILblPJCompetencia" runat="server" Text="Competencia: "></asp:Label>
                        <asp:RadioButtonList ID="VIIRblPJCompetencia" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="1" style="margin-right: 3rem;" Text="Federal"></asp:ListItem>
                            <asp:ListItem Value="2" style="margin-right: 3rem;" Text="Local"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label ID="VIILblPJEntFed" runat="server" Text="Entidad Federativa: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="VIIRblPJEntFed" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-1">
                        <asp:Label ID="VIILblPJDelito" runat="server" Text="Delito: "></asp:Label>
                    </div>
                    <div class="col-md-11">
                        <asp:TextBox ID="VIITxtPJDelito" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label ID="VIILblNumJuz" runat="server" Text="Número de juzgado: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="VIITxtNumJuz" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label ID="VIILblNumPros" runat="server" Text="Número de proceso: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="VIITxtNumPros" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label ID="VIILblEdoPJ" runat="server" Text="Estado del proceso judicial: "></asp:Label>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="VIITxtEdoPJ" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <hr />

                <div class="row" style="background-color: lightgray; padding-left: 1rem;">
                    <h5 class="text-left"><b>PROCEDIMIENTOS ANTE ORGANISMOS NACIONALES E INTERNACIONALES DE DERECHOS HUMANOS</b></h5>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <asp:Label ID="VIILblPresento" runat="server" Text="¿Presentó queja, petición u otro tipo de solicitud ante organismo de DD. HH.?: "></asp:Label>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="1" style="margin-right: 3rem;" Text="Sí"></asp:ListItem>
                            <asp:ListItem Value="2" style="margin-right: 3rem;" Text="No"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-md-4">
                        <asp:TextBox ID="VIILblFechaPresento" runat="server" Placeholder="DD/MM/AAAA" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-8">
                        <asp:Label ID="VIILblDHCompetencia" runat="server" Text="Competencia: "></asp:Label>
                        <asp:RadioButtonList ID="VIIRblDHCompetencia" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="1" style="margin-right: 3rem;" Text="Federal"></asp:ListItem>
                            <asp:ListItem Value="2" style="margin-right: 3rem;" Text="Local"></asp:ListItem>
                            <asp:ListItem Value="3" style="margin-right: 3rem;" Text="Internacional"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label ID="VIILblOrganismo" runat="server" Text="Organismo: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="VIITxtOrganismo" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label ID="VIILblVDH" runat="server" Text="Violación a DD. HH.: "></asp:Label>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="VIITxtVDH" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label ID="VIILblAuRes" runat="server" Text="Autoridad responsable: "></asp:Label>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="VIITxtAuRes" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8" style="font-size: 1.7rem;">
                        <asp:Label ID="VIILblTipoRes" runat="server" Text="Tipo de resolución: "></asp:Label>
                        <asp:RadioButtonList ID="VIIRblTipoRes" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="1" style="margin-right: 3rem;" Text="Recomendacion"></asp:ListItem>
                            <asp:ListItem Value="2" style="margin-right: 3rem;" Text="Conciliación"></asp:ListItem>
                            <asp:ListItem Value="3" style="margin-right: 3rem;" Text="Medidas Precautorias"></asp:ListItem>
                            <asp:ListItem Value="4" style="margin-right: 3rem;" Text="Otra"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-md-4">
                        <asp:TextBox ID="VIITxtOtra" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label ID="VIILblFolio" runat="server" Text="Número de juzgado: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="VIITxtFolio" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label ID="VIILblEdoAct" runat="server" Text="Número de proceso: "></asp:Label>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="VIITxtEdoAct" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label ID="VIILblOtraAutoridad" runat="server" Text="Otra autoridad: "></asp:Label>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="VIITxtOtraAutoridad" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <hr />
                <p>
                    <b>NOTA: </b>En caso de requerir más espacio para relatar los hechos delictivos o la violación a
                    derechos humanos, por favor utilice el formato (“INFORMACIÓN COMPLEMENTARIA”)
                </p>
            </asp:Panel>
            <!-- VII. AUTORIDADES QUE HAN CONOCIDO DE LOS HECHOS -->

        </div>
    </div>

    <script>
        const styleElementHeight = getComputedStyle(document.getElementById("TxtVExtraInfo")).height;
        console.log('style Element Height : ', styleElementHeight);
    </script>

</asp:Content>
