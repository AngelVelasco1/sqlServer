### Tabla: `cliente`

| Atributo - Campo   | Tipo de Dato     | Longitud | Modificador o Restricción  | Tabla y Campo si es Foránea | Descripción del Campo                            |
|--------------------|------------------|----------|----------------------------|----------------------------|---------------------------------------------------|
| id                 | INT              | N/A      | PRIMARY KEY, IDENTITY      | N/A                        | Identificador único del cliente                  |
| nombre             | VARCHAR          | 100      | NOT NULL                   | N/A                        | Nombre del cliente                               |
| apellido1          | VARCHAR          | 100      | NOT NULL                   | N/A                        | Primer apellido del cliente                      |
| apellido2          | VARCHAR          | 100      | NULL                       | N/A                        | Segundo apellido del cliente                     |
| ciudad             | VARCHAR          | 100      | NULL                       | N/A                        | Ciudad de residencia del cliente                 |
| categoria          | INT              | N/A      | NULL                       | N/A                        | Categoría o tipo de cliente (posiblemente tipo)   |

### Tabla: `comercial`

| Atributo - Campo   | Tipo de Dato     | Longitud | Modificador o Restricción  | Tabla y Campo si es Foránea | Descripción del Campo                            |
|--------------------|------------------|----------|----------------------------|----------------------------|---------------------------------------------------|
| id                 | INT              | N/A      | PRIMARY KEY, IDENTITY      | N/A                        | Identificador único del comercial                |
| nombre             | VARCHAR          | 100      | NOT NULL                   | N/A                        | Nombre del comercial                             |
| apellido1          | VARCHAR          | 100      | NOT NULL                   | N/A                        | Primer apellido del comercial                    |
| apellido2          | VARCHAR          | 100      | NULL                       | N/A                        | Segundo apellido del comercial                   |
| comision           | FLOAT            | N/A      | NULL                       | N/A                        | Comisión del comercial (porcentaje o monto)      |

### Tabla: `pedido`

| Atributo - Campo   | Tipo de Dato     | Longitud | Modificador o Restricción  | Tabla y Campo si es Foránea     | Descripción del Campo                            |
|--------------------|------------------|----------|----------------------------|--------------------------------|---------------------------------------------------|
| id                 | INT              | N/A      | PRIMARY KEY, IDENTITY      | N/A                            | Identificador único del pedido                   |
| total              | VARCHAR          | 100      | NOT NULL                   | N/A                            | Total del pedido (probablemente un monto)        |
| fecha              | VARCHAR          | 100      | NOT NULL                   | N/A                            | Fecha en la que se realiza el pedido             |
| id_cliente         | INT              | N/A      | FOREIGN KEY                | cliente(id)                   | Referencia al cliente que realiza el pedido      |
| id_comercial       | INT              | N/A      | FOREIGN KEY                | comercial(id)                 | Referencia al comercial que gestionó el pedido   |

---
