namespace wfaSCA
{
    partial class frmNotas
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmNotas));
            System.Windows.Forms.Label mat_Alu_CodLabel;
            System.Windows.Forms.Label mat_Dis_CodLabel;
            System.Windows.Forms.Label mat_Avl_001Label;
            System.Windows.Forms.Label mat_Avl_002Label;
            System.Windows.Forms.Label mat_Trb_001Label;
            System.Windows.Forms.Label mat_MedLabel;
            System.Windows.Forms.Label mat_ConLabel;
            this.scaDataSet = new wfaSCA.scaDataSet();
            this.matriculaBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.matriculaTableAdapter = new wfaSCA.scaDataSetTableAdapters.MatriculaTableAdapter();
            this.tableAdapterManager = new wfaSCA.scaDataSetTableAdapters.TableAdapterManager();
            this.matriculaBindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorAddNewItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorDeleteItem = new System.Windows.Forms.ToolStripButton();
            this.matriculaBindingNavigatorSaveItem = new System.Windows.Forms.ToolStripButton();
            this.mat_Alu_CodTextBox = new System.Windows.Forms.TextBox();
            this.mat_Dis_CodTextBox = new System.Windows.Forms.TextBox();
            this.mat_Avl_001TextBox = new System.Windows.Forms.TextBox();
            this.mat_Avl_002TextBox = new System.Windows.Forms.TextBox();
            this.mat_Trb_001TextBox = new System.Windows.Forms.TextBox();
            this.mat_MedTextBox = new System.Windows.Forms.TextBox();
            this.mat_ConTextBox = new System.Windows.Forms.TextBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.matAluCodDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.matDisCodDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.matAvl001DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.matAvl002DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.matTrb001DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.matMedDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.matConDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            mat_Alu_CodLabel = new System.Windows.Forms.Label();
            mat_Dis_CodLabel = new System.Windows.Forms.Label();
            mat_Avl_001Label = new System.Windows.Forms.Label();
            mat_Avl_002Label = new System.Windows.Forms.Label();
            mat_Trb_001Label = new System.Windows.Forms.Label();
            mat_MedLabel = new System.Windows.Forms.Label();
            mat_ConLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.scaDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.matriculaBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.matriculaBindingNavigator)).BeginInit();
            this.matriculaBindingNavigator.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // scaDataSet
            // 
            this.scaDataSet.DataSetName = "scaDataSet";
            this.scaDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // matriculaBindingSource
            // 
            this.matriculaBindingSource.DataMember = "Matricula";
            this.matriculaBindingSource.DataSource = this.scaDataSet;
            // 
            // matriculaTableAdapter
            // 
            this.matriculaTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.AlunoTableAdapter = null;
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.CursoTableAdapter = null;
            this.tableAdapterManager.DepartamentoTableAdapter = null;
            this.tableAdapterManager.DisciplinaTableAdapter = null;
            this.tableAdapterManager.EstadoTableAdapter = null;
            this.tableAdapterManager.MatriculaTableAdapter = this.matriculaTableAdapter;
            this.tableAdapterManager.UpdateOrder = wfaSCA.scaDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            // 
            // matriculaBindingNavigator
            // 
            this.matriculaBindingNavigator.AddNewItem = this.bindingNavigatorAddNewItem;
            this.matriculaBindingNavigator.BindingSource = this.matriculaBindingSource;
            this.matriculaBindingNavigator.CountItem = this.bindingNavigatorCountItem;
            this.matriculaBindingNavigator.DeleteItem = this.bindingNavigatorDeleteItem;
            this.matriculaBindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bindingNavigatorMoveFirstItem,
            this.bindingNavigatorMovePreviousItem,
            this.bindingNavigatorSeparator,
            this.bindingNavigatorPositionItem,
            this.bindingNavigatorCountItem,
            this.bindingNavigatorSeparator1,
            this.bindingNavigatorMoveNextItem,
            this.bindingNavigatorMoveLastItem,
            this.bindingNavigatorSeparator2,
            this.bindingNavigatorAddNewItem,
            this.bindingNavigatorDeleteItem,
            this.matriculaBindingNavigatorSaveItem});
            this.matriculaBindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.matriculaBindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.matriculaBindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.matriculaBindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.matriculaBindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.matriculaBindingNavigator.Name = "matriculaBindingNavigator";
            this.matriculaBindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.matriculaBindingNavigator.Size = new System.Drawing.Size(499, 25);
            this.matriculaBindingNavigator.TabIndex = 0;
            this.matriculaBindingNavigator.Text = "bindingNavigator1";
            // 
            // bindingNavigatorMoveFirstItem
            // 
            this.bindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveFirstItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveFirstItem.Image")));
            this.bindingNavigatorMoveFirstItem.Name = "bindingNavigatorMoveFirstItem";
            this.bindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveFirstItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveFirstItem.Text = "Move first";
            // 
            // bindingNavigatorMovePreviousItem
            // 
            this.bindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMovePreviousItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMovePreviousItem.Image")));
            this.bindingNavigatorMovePreviousItem.Name = "bindingNavigatorMovePreviousItem";
            this.bindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMovePreviousItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMovePreviousItem.Text = "Move previous";
            // 
            // bindingNavigatorSeparator
            // 
            this.bindingNavigatorSeparator.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorPositionItem
            // 
            this.bindingNavigatorPositionItem.AccessibleName = "Position";
            this.bindingNavigatorPositionItem.AutoSize = false;
            this.bindingNavigatorPositionItem.Name = "bindingNavigatorPositionItem";
            this.bindingNavigatorPositionItem.Size = new System.Drawing.Size(50, 23);
            this.bindingNavigatorPositionItem.Text = "0";
            this.bindingNavigatorPositionItem.ToolTipText = "Current position";
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(35, 22);
            this.bindingNavigatorCountItem.Text = "of {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Total number of items";
            // 
            // bindingNavigatorSeparator1
            // 
            this.bindingNavigatorSeparator1.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorMoveNextItem
            // 
            this.bindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveNextItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveNextItem.Image")));
            this.bindingNavigatorMoveNextItem.Name = "bindingNavigatorMoveNextItem";
            this.bindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveNextItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveNextItem.Text = "Move next";
            // 
            // bindingNavigatorMoveLastItem
            // 
            this.bindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveLastItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveLastItem.Image")));
            this.bindingNavigatorMoveLastItem.Name = "bindingNavigatorMoveLastItem";
            this.bindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveLastItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveLastItem.Text = "Move last";
            // 
            // bindingNavigatorSeparator2
            // 
            this.bindingNavigatorSeparator2.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorAddNewItem
            // 
            this.bindingNavigatorAddNewItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorAddNewItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorAddNewItem.Image")));
            this.bindingNavigatorAddNewItem.Name = "bindingNavigatorAddNewItem";
            this.bindingNavigatorAddNewItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorAddNewItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorAddNewItem.Text = "Add new";
            // 
            // bindingNavigatorDeleteItem
            // 
            this.bindingNavigatorDeleteItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorDeleteItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorDeleteItem.Image")));
            this.bindingNavigatorDeleteItem.Name = "bindingNavigatorDeleteItem";
            this.bindingNavigatorDeleteItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorDeleteItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorDeleteItem.Text = "Delete";
            // 
            // matriculaBindingNavigatorSaveItem
            // 
            this.matriculaBindingNavigatorSaveItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.matriculaBindingNavigatorSaveItem.Image = ((System.Drawing.Image)(resources.GetObject("matriculaBindingNavigatorSaveItem.Image")));
            this.matriculaBindingNavigatorSaveItem.Name = "matriculaBindingNavigatorSaveItem";
            this.matriculaBindingNavigatorSaveItem.Size = new System.Drawing.Size(23, 22);
            this.matriculaBindingNavigatorSaveItem.Text = "Save Data";
            this.matriculaBindingNavigatorSaveItem.Click += new System.EventHandler(this.matriculaBindingNavigatorSaveItem_Click_1);
            // 
            // mat_Alu_CodLabel
            // 
            mat_Alu_CodLabel.AutoSize = true;
            mat_Alu_CodLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            mat_Alu_CodLabel.Location = new System.Drawing.Point(24, 45);
            mat_Alu_CodLabel.Name = "mat_Alu_CodLabel";
            mat_Alu_CodLabel.Size = new System.Drawing.Size(72, 18);
            mat_Alu_CodLabel.TabIndex = 1;
            mat_Alu_CodLabel.Text = "Matricula:";
            // 
            // mat_Alu_CodTextBox
            // 
            this.mat_Alu_CodTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.matriculaBindingSource, "Mat_Alu_Cod", true));
            this.mat_Alu_CodTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mat_Alu_CodTextBox.Location = new System.Drawing.Point(124, 42);
            this.mat_Alu_CodTextBox.Name = "mat_Alu_CodTextBox";
            this.mat_Alu_CodTextBox.Size = new System.Drawing.Size(100, 24);
            this.mat_Alu_CodTextBox.TabIndex = 2;
            // 
            // mat_Dis_CodLabel
            // 
            mat_Dis_CodLabel.AutoSize = true;
            mat_Dis_CodLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            mat_Dis_CodLabel.Location = new System.Drawing.Point(24, 71);
            mat_Dis_CodLabel.Name = "mat_Dis_CodLabel";
            mat_Dis_CodLabel.Size = new System.Drawing.Size(75, 18);
            mat_Dis_CodLabel.TabIndex = 3;
            mat_Dis_CodLabel.Text = "Disciplina:";
            // 
            // mat_Dis_CodTextBox
            // 
            this.mat_Dis_CodTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.matriculaBindingSource, "Mat_Dis_Cod", true));
            this.mat_Dis_CodTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mat_Dis_CodTextBox.Location = new System.Drawing.Point(124, 68);
            this.mat_Dis_CodTextBox.Name = "mat_Dis_CodTextBox";
            this.mat_Dis_CodTextBox.Size = new System.Drawing.Size(100, 24);
            this.mat_Dis_CodTextBox.TabIndex = 4;
            // 
            // mat_Avl_001Label
            // 
            mat_Avl_001Label.AutoSize = true;
            mat_Avl_001Label.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            mat_Avl_001Label.Location = new System.Drawing.Point(261, 42);
            mat_Avl_001Label.Name = "mat_Avl_001Label";
            mat_Avl_001Label.Size = new System.Drawing.Size(66, 18);
            mat_Avl_001Label.TabIndex = 5;
            mat_Avl_001Label.Text = "Nota P1:";
            // 
            // mat_Avl_001TextBox
            // 
            this.mat_Avl_001TextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.matriculaBindingSource, "Mat_Avl_001", true));
            this.mat_Avl_001TextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mat_Avl_001TextBox.Location = new System.Drawing.Point(361, 39);
            this.mat_Avl_001TextBox.Name = "mat_Avl_001TextBox";
            this.mat_Avl_001TextBox.Size = new System.Drawing.Size(100, 24);
            this.mat_Avl_001TextBox.TabIndex = 6;
            // 
            // mat_Avl_002Label
            // 
            mat_Avl_002Label.AutoSize = true;
            mat_Avl_002Label.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            mat_Avl_002Label.Location = new System.Drawing.Point(261, 68);
            mat_Avl_002Label.Name = "mat_Avl_002Label";
            mat_Avl_002Label.Size = new System.Drawing.Size(66, 18);
            mat_Avl_002Label.TabIndex = 7;
            mat_Avl_002Label.Text = "Nota P2:";
            // 
            // mat_Avl_002TextBox
            // 
            this.mat_Avl_002TextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.matriculaBindingSource, "Mat_Avl_002", true));
            this.mat_Avl_002TextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mat_Avl_002TextBox.Location = new System.Drawing.Point(361, 65);
            this.mat_Avl_002TextBox.Name = "mat_Avl_002TextBox";
            this.mat_Avl_002TextBox.Size = new System.Drawing.Size(100, 24);
            this.mat_Avl_002TextBox.TabIndex = 8;
            // 
            // mat_Trb_001Label
            // 
            mat_Trb_001Label.AutoSize = true;
            mat_Trb_001Label.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            mat_Trb_001Label.Location = new System.Drawing.Point(261, 94);
            mat_Trb_001Label.Name = "mat_Trb_001Label";
            mat_Trb_001Label.Size = new System.Drawing.Size(70, 18);
            mat_Trb_001Label.TabIndex = 9;
            mat_Trb_001Label.Text = "Trabalho:";
            // 
            // mat_Trb_001TextBox
            // 
            this.mat_Trb_001TextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.matriculaBindingSource, "Mat_Trb_001", true));
            this.mat_Trb_001TextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mat_Trb_001TextBox.Location = new System.Drawing.Point(361, 91);
            this.mat_Trb_001TextBox.Name = "mat_Trb_001TextBox";
            this.mat_Trb_001TextBox.Size = new System.Drawing.Size(100, 24);
            this.mat_Trb_001TextBox.TabIndex = 10;
            // 
            // mat_MedLabel
            // 
            mat_MedLabel.AutoSize = true;
            mat_MedLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            mat_MedLabel.Location = new System.Drawing.Point(24, 101);
            mat_MedLabel.Name = "mat_MedLabel";
            mat_MedLabel.Size = new System.Drawing.Size(52, 18);
            mat_MedLabel.TabIndex = 11;
            mat_MedLabel.Text = "Média:";
            // 
            // mat_MedTextBox
            // 
            this.mat_MedTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.matriculaBindingSource, "Mat_Med", true));
            this.mat_MedTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mat_MedTextBox.Location = new System.Drawing.Point(124, 98);
            this.mat_MedTextBox.Name = "mat_MedTextBox";
            this.mat_MedTextBox.Size = new System.Drawing.Size(100, 24);
            this.mat_MedTextBox.TabIndex = 12;
            // 
            // mat_ConLabel
            // 
            mat_ConLabel.AutoSize = true;
            mat_ConLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            mat_ConLabel.Location = new System.Drawing.Point(24, 127);
            mat_ConLabel.Name = "mat_ConLabel";
            mat_ConLabel.Size = new System.Drawing.Size(72, 18);
            mat_ConLabel.TabIndex = 13;
            mat_ConLabel.Text = "Conceito:";
            // 
            // mat_ConTextBox
            // 
            this.mat_ConTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.matriculaBindingSource, "Mat_Con", true));
            this.mat_ConTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mat_ConTextBox.Location = new System.Drawing.Point(124, 124);
            this.mat_ConTextBox.Name = "mat_ConTextBox";
            this.mat_ConTextBox.Size = new System.Drawing.Size(100, 24);
            this.mat_ConTextBox.TabIndex = 14;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.matAluCodDataGridViewTextBoxColumn,
            this.matDisCodDataGridViewTextBoxColumn,
            this.matAvl001DataGridViewTextBoxColumn,
            this.matAvl002DataGridViewTextBoxColumn,
            this.matTrb001DataGridViewTextBoxColumn,
            this.matMedDataGridViewTextBoxColumn,
            this.matConDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.matriculaBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(27, 179);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(434, 150);
            this.dataGridView1.TabIndex = 15;
            // 
            // matAluCodDataGridViewTextBoxColumn
            // 
            this.matAluCodDataGridViewTextBoxColumn.DataPropertyName = "Mat_Alu_Cod";
            this.matAluCodDataGridViewTextBoxColumn.HeaderText = "Mat_Alu_Cod";
            this.matAluCodDataGridViewTextBoxColumn.Name = "matAluCodDataGridViewTextBoxColumn";
            // 
            // matDisCodDataGridViewTextBoxColumn
            // 
            this.matDisCodDataGridViewTextBoxColumn.DataPropertyName = "Mat_Dis_Cod";
            this.matDisCodDataGridViewTextBoxColumn.HeaderText = "Mat_Dis_Cod";
            this.matDisCodDataGridViewTextBoxColumn.Name = "matDisCodDataGridViewTextBoxColumn";
            // 
            // matAvl001DataGridViewTextBoxColumn
            // 
            this.matAvl001DataGridViewTextBoxColumn.DataPropertyName = "Mat_Avl_001";
            this.matAvl001DataGridViewTextBoxColumn.HeaderText = "Mat_Avl_001";
            this.matAvl001DataGridViewTextBoxColumn.Name = "matAvl001DataGridViewTextBoxColumn";
            // 
            // matAvl002DataGridViewTextBoxColumn
            // 
            this.matAvl002DataGridViewTextBoxColumn.DataPropertyName = "Mat_Avl_002";
            this.matAvl002DataGridViewTextBoxColumn.HeaderText = "Mat_Avl_002";
            this.matAvl002DataGridViewTextBoxColumn.Name = "matAvl002DataGridViewTextBoxColumn";
            // 
            // matTrb001DataGridViewTextBoxColumn
            // 
            this.matTrb001DataGridViewTextBoxColumn.DataPropertyName = "Mat_Trb_001";
            this.matTrb001DataGridViewTextBoxColumn.HeaderText = "Mat_Trb_001";
            this.matTrb001DataGridViewTextBoxColumn.Name = "matTrb001DataGridViewTextBoxColumn";
            // 
            // matMedDataGridViewTextBoxColumn
            // 
            this.matMedDataGridViewTextBoxColumn.DataPropertyName = "Mat_Med";
            this.matMedDataGridViewTextBoxColumn.HeaderText = "Mat_Med";
            this.matMedDataGridViewTextBoxColumn.Name = "matMedDataGridViewTextBoxColumn";
            // 
            // matConDataGridViewTextBoxColumn
            // 
            this.matConDataGridViewTextBoxColumn.DataPropertyName = "Mat_Con";
            this.matConDataGridViewTextBoxColumn.HeaderText = "Mat_Con";
            this.matConDataGridViewTextBoxColumn.Name = "matConDataGridViewTextBoxColumn";
            // 
            // frmNotas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(499, 347);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(mat_Alu_CodLabel);
            this.Controls.Add(this.mat_Alu_CodTextBox);
            this.Controls.Add(mat_Dis_CodLabel);
            this.Controls.Add(this.mat_Dis_CodTextBox);
            this.Controls.Add(mat_Avl_001Label);
            this.Controls.Add(this.mat_Avl_001TextBox);
            this.Controls.Add(mat_Avl_002Label);
            this.Controls.Add(this.mat_Avl_002TextBox);
            this.Controls.Add(mat_Trb_001Label);
            this.Controls.Add(this.mat_Trb_001TextBox);
            this.Controls.Add(mat_MedLabel);
            this.Controls.Add(this.mat_MedTextBox);
            this.Controls.Add(mat_ConLabel);
            this.Controls.Add(this.mat_ConTextBox);
            this.Controls.Add(this.matriculaBindingNavigator);
            this.Name = "frmNotas";
            this.Text = "frmNotas";
            this.Load += new System.EventHandler(this.frmNotas_Load);
            ((System.ComponentModel.ISupportInitialize)(this.scaDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.matriculaBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.matriculaBindingNavigator)).EndInit();
            this.matriculaBindingNavigator.ResumeLayout(false);
            this.matriculaBindingNavigator.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private scaDataSet scaDataSet;
        private System.Windows.Forms.BindingSource matriculaBindingSource;
        private scaDataSetTableAdapters.MatriculaTableAdapter matriculaTableAdapter;
        private scaDataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.BindingNavigator matriculaBindingNavigator;
        private System.Windows.Forms.ToolStripButton bindingNavigatorAddNewItem;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorDeleteItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveFirstItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMovePreviousItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator;
        private System.Windows.Forms.ToolStripTextBox bindingNavigatorPositionItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveNextItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveLastItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator2;
        private System.Windows.Forms.ToolStripButton matriculaBindingNavigatorSaveItem;
        private System.Windows.Forms.TextBox mat_Alu_CodTextBox;
        private System.Windows.Forms.TextBox mat_Dis_CodTextBox;
        private System.Windows.Forms.TextBox mat_Avl_001TextBox;
        private System.Windows.Forms.TextBox mat_Avl_002TextBox;
        private System.Windows.Forms.TextBox mat_Trb_001TextBox;
        private System.Windows.Forms.TextBox mat_MedTextBox;
        private System.Windows.Forms.TextBox mat_ConTextBox;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn matAluCodDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn matDisCodDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn matAvl001DataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn matAvl002DataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn matTrb001DataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn matMedDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn matConDataGridViewTextBoxColumn;
    }
}